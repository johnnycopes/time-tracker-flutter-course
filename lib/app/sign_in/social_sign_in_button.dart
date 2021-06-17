import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SocialSignInButton extends StatelessWidget {
  final String text;
  final String assetName;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  SocialSignInButton({
    required this.text,
    required this.assetName,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(assetName),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
            ),
          ),
          Opacity(
            opacity: 0.0,
            child: Image.asset(assetName),
          ),
        ],
      ),
      color: color,
      onPressed: onPressed,
    );
  }
}
