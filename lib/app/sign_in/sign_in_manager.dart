import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class SignInManager {
  SignInManager({
    required this.auth,
    required this.isLoading,
  });

  final AuthBase auth;
  final ValueNotifier<bool> isLoading;

  Future<User?> signInAnonymously() async => _signIn(auth.signInAnonymously);

  Future<void> signInWithGoogle() async => _signIn(auth.signInWithGoogle);

  Future<User?> _signIn(Future<User?> Function() signInMethod) async {
    try {
      isLoading.value = true;
      return await signInMethod();
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }
}
