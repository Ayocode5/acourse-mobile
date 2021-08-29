import 'package:acourse/pages/login_page.dart';
import 'package:acourse/pages/main_page.dart';
import 'package:acourse/pages/signup_page.dart';
import 'package:acourse/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
