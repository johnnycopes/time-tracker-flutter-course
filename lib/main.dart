import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/sign_in/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool _initialized = false;
  bool _error = false;

  Future<void> initializeFlutterFire() async {
    try {
      final myApp = await Firebase.initializeApp();
      print(myApp);
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      // return SomethingWentWrong();
      print("error");
    }

    if (!_initialized) {
      // return Loading();
      print("loading");
    }

    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),
    );
  }
}
