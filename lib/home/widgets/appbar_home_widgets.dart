import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget appBarHome() {
  return SliverAppBar(
    backgroundColor: ColorTheme.whiteColor,
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0.4,
    leading: Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorTheme.whiteColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_rounded,
            size: 28,
            color: ColorTheme.darkGrayColor,
          ),
        ),
      ),
    ),
    title: Center(
      child: Image.asset(
        ('assets/images/twitter.png'),
        width: 40,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.auto_awesome_outlined,
          size: 28,
          color: ColorTheme.blackColor,
        ),
      ),
    ],
  );
}
