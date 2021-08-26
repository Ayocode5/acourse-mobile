import 'package:acourse/pages/home_page.dart';
import 'package:acourse/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            right: defaultMargin,
            left: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/home_icon.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/class_icon.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/cart_icon.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/notif_icon.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/profile_icon.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigationBar(),
        ],
      ),
    );
  }
}
