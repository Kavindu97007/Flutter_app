import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/auth/signup.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signUp(),
    );
  }
}
