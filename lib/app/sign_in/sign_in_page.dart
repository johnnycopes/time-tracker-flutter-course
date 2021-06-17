import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_course/app/sign_in/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey.shade200,
    );
  }
}

Widget _buildContent() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 48.0),
        SizedBox(height: 8.0),
        SocialSignInButton(
          text: 'Sign in with Google',
          assetName: 'images/google-logo.png',
          textColor: Colors.black87,
          color: Colors.white,
          onPressed: () => print("google!"),
        ),
        SizedBox(height: 8.0),
        SocialSignInButton(
          text: 'Sign in with Facebook',
          assetName: 'images/facebook-logo.png',
          textColor: Colors.white,
          color: Color(0xFF334D92),
          onPressed: () => print("facebook!"),
        ),
        SizedBox(height: 8.0),
        SignInButton(
          text: 'Sign in with email',
          textColor: Colors.white,
          color: Colors.teal,
          onPressed: () => print("email!"),
        ),
        SizedBox(height: 8.0),
        Text(
          'or',
          style: TextStyle(fontSize: 14.0, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.0),
        SignInButton(
          text: 'Go anonymous',
          textColor: Colors.black,
          color: Colors.lime.shade300,
          onPressed: () => print("anonymous!"),
        ),
      ],
    ),
  );
}
