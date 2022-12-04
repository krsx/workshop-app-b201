import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget appBarHome() {
  return SliverAppBar(
    forceElevated: true,
    floating: true,
    snap: true,
    backgroundColor: ColorTheme.whiteColor,
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0.8,
    leading: Center(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorTheme.whiteColor,
        ),
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/profile_1.png",
            width: 28,
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
      // IconButton(
      //   onPressed: () {},
      //   icon: const Icon(
      //     Icons.auto_awesome_outlined,
      //     size: 28,
      //     color: ColorTheme.blackColor,
      //   ),
      // ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/icons/recomend_icon.png",
            width: 28,
          ),
        ),
      ),
    ],
  );
}
