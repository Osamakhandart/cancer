import 'package:flutter/material.dart';
import 'login.dart';
import 'sign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => login(),
      'signup': (context) => Signup(),
    });
  }
}
