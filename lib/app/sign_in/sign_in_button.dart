import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;

  const SignInButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 16.0),
      ),
      color: color,
      onPressed: onPressed,
    );
  }
}
