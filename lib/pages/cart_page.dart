import 'package:acourse/theme.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: Text(
          'Cart Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}
