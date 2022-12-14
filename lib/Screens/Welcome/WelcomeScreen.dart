import 'package:flutter/material.dart';
import 'package:stalkproject/Responsive.dart';
import 'package:stalkproject/Screens/Welcome/Components/LogInAndSignUp.dart';
import 'package:stalkproject/Screens/Welcome/Components/WelcomeImage.dart';
import 'package:stalkproject/components/Background.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  child: WelcomeImage(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 450,
                        child: LoginAndSignup(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            mobile: const MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const WelcomeImage(),
          Row(
            children: const [
              Spacer(),
              Expanded(
                flex: 8,
                child: LoginAndSignup(),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
