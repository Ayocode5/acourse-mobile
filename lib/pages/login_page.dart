import 'package:acourse/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Log In',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
    }

    Widget emailInput() {
      return Container(
        padding: EdgeInsets.only(
          top: 46,
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
                child: Row(children: [
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
                ]),
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

    Widget forgotPassword() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forgot Password?',
              style: blueTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }

    Widget loginButton() {
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
            'Log In',
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
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: grayTextStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/signup',
                );
              },
              child: Text(
                'Sign Up',
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              header(),
              emailInput(),
              passwordInput(),
              forgotPassword(),
              loginButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
