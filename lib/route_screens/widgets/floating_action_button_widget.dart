import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget floatingActionButton(BuildContext context) {
  return Container(
    width: 60,
    height: 60,
    child: FloatingActionButton(
      focusElevation: 8,
      hoverElevation: 8,
      disabledElevation: 8,
      highlightElevation: 8,
      elevation: 0,
      backgroundColor: ColorTheme.blueColor,
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      // child: const Icon(
      //   Icons.add_rounded,
      //   size: 30,
      // ),
      child: Image.asset(
        "assets/images/icons/tweet_icon.png",
        width: 26,
      ),
    ),
  );
}
