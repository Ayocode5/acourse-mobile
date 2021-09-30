import 'package:acourse/theme.dart';
import 'package:flutter/material.dart';

class MyClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: Text(
          'Class Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}
