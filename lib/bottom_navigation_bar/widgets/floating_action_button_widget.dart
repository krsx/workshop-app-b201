import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget floatingActionButton() {
  return Container(
    width: 60,
    height: 60,
    child: FloatingActionButton(
      elevation: 0,
      backgroundColor: ColorTheme.blueColor,
      onPressed: () {},
      child: const Icon(
        Icons.add_rounded,
        size: 30,
      ),
    ),
  );
}
