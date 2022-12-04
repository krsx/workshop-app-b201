import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget drawerMenu({
  required String iconImg,
  required String title,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        iconImg,
        width: 20,
      ),
      const SizedBox(
        width: 20,
      ),
      Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 20,
          // fontWeight: FontWeight.w500,
          color: ColorTheme.blackColor,
        ),
      ),
    ],
  );
}
