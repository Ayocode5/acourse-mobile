import 'package:acourse/theme.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
    }

    Widget fullNameInput() {
      return Container(
        padding: EdgeInsets.only(
          top: 46,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: blackTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: grayTextStyle.copyWith(
                            color: Color(0xffDADADA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        padding: EdgeInsets.only(
          top: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: blackTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: grayTextStyle.copyWith(
                            color: Color(0xffDADADA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        padding: EdgeInsets.only(
          top: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Center(
                child: Row(children: [
                  Expanded(
                    child: TextFormField(
                      style: blackTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: grayTextStyle.copyWith(
                          color: Color(0xffDADADA),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      );
    }

    Widget repasswordInput() {
      return Container(
        padding: EdgeInsets.only(
          top: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirm Password',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Center(
                child: Row(children: [
                  Expanded(
                    child: TextFormField(
                      style: blackTextStyle,
                      scrollPadding: EdgeInsets.only(
                        bottom: 120,
                      ),
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: grayTextStyle.copyWith(
                          color: Color(0xffDADADA),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      );
    }

    Widget createButton() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
        ),
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/home',
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            'Create Account',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        padding: EdgeInsets.only(
          top: 70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: grayTextStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/login',
                );
              },
              child: Text(
                'Log In',
                style: blueTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              header(),
              fullNameInput(),
              emailInput(),
              passwordInput(),
              repasswordInput(),
              createButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
