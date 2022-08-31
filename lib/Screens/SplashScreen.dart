import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stalkproject/Screens/Welcome/WelcomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('asset/Icon/SplashTech.json'),
      backgroundColor: Colors.orangeAccent,
      nextScreen: WelcomeScreen(),
      splashIconSize: 200,
      duration: 1500,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(
        seconds: 1,
      ),
    );
  }
}
