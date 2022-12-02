import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workshop_app_b201/bottom_navigation_bar/screens/bottom_navigation_bar_widgets.dart';
import 'package:workshop_app_b201/home/screens/home_screens.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      (() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RouteScreen(),
            ),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorTheme.blueColor,
        body: Center(
          child: Image.asset(
            "assets/images/twitter.png",
            width: 150,
            color: ColorTheme.whiteColor,
          ),
        ),
      ),
    );
  }
}
