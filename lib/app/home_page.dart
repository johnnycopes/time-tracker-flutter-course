import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class HomePage extends StatelessWidget {
  final AuthBase auth;

  const HomePage({
    Key? key,
    required this.auth,
  }) : super(key: key);

  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          TextButton(
            child: Text(
              "Log Out",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
    );
  }
}
