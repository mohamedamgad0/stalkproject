import 'package:flutter/material.dart';
import 'package:stalkproject/Responsive.dart';
import 'package:stalkproject/Screens/LogIn/Components/LogInBody.dart';
import 'package:stalkproject/components/Background.dart';
import 'Components/LogInBackground.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Background(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Responsive(
            mobile: const MobileLoginScreen(),
            desktop: Row(
              children: [
                const Expanded(
                  child: LoginScreenBackground(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 450,
                        child: LogInBody(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const LoginScreenBackground(),
          Row(
            children: const [
              Spacer(),
              Expanded(
                flex: 8,
                child: LogInBody(),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
