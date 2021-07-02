import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class FormSubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const FormSubmitButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
      color: Colors.indigo,
      height: 44.0,
      onPressed: onPressed,
    );
  }
}
