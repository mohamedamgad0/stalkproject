import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';
import 'package:stalkproject/Responsive.dart';
import 'package:stalkproject/Screens/Signup/Components/SignUpBackground.dart';
import 'package:stalkproject/Screens/Signup/Components/SignUpBody.dart';
import 'package:stalkproject/components/Background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Background(
        child: Responsive(
          mobile: const MobileSignupScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: SignUpBackground(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: SignUpBody(),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SignUpBackground(),
            Row(
              children: const [
                Spacer(),
                Expanded(
                  flex: 8,
                  child: SignUpBody(),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
