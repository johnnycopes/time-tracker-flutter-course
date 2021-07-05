import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class AuthProvider extends InheritedWidget {
  final AuthBase auth;

  const AuthProvider({
    Key? key,
    required Widget child,
    required this.auth,
  }) : super(
          key: key,
          child: child,
        );

  static AuthBase of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<AuthProvider>();
    if (provider != null) {
      return provider.auth;
    } else {
      throw StateError('Could not find ancestor widget of type `AuthProvider`');
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
