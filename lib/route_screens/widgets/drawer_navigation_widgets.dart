import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshop_app_b201/route_screens/widgets/drawer_menu_widget.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

Widget drawerNavigation() {
  return SafeArea(
    child: Drawer(
      backgroundColor: ColorTheme.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/profile_1.png",
                  width: 50,
                ),
                Image.asset(
                  "assets/images/icons/menu_icon.png",
                  width: 24,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Krisna Erlangga",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "@krisna123",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: ColorTheme.darkGrayColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  "1",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Mengikuti",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: ColorTheme.darkGrayColor,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "1",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Pengikut",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: ColorTheme.darkGrayColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            drawerMenu(
              iconImg: "assets/images/icons/profile_icon.png",
              title: "Profile",
            ),
            const SizedBox(
              height: 36,
            ),
            drawerMenu(
              iconImg: "assets/images/icons/list_icon.png",
              title: "Lists",
            ),
            const SizedBox(
              height: 36,
            ),
            drawerMenu(
              iconImg: "assets/images/icons/topic_icon.png",
              title: "Topics",
            ),
            const SizedBox(
              height: 36,
            ),
            drawerMenu(
              iconImg: "assets/images/icons/bookmark_icon.png",
              title: "Bookmarks",
            ),
            const SizedBox(
              height: 36,
            ),
            drawerMenu(
              iconImg: "assets/images/icons/moments_icon.png",
              title: "Moments",
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: ColorTheme.extraLightGrayColor,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Pengaturan dan privasi",
              style: GoogleFonts.inter(
                fontSize: 18,
                // fontWeight: FontWeight.w500,
                color: ColorTheme.blackColor,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              "Bantuan",
              style: GoogleFonts.inter(
                fontSize: 18,
                // fontWeight: FontWeight.w500,
                color: ColorTheme.blackColor,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/icons/lamp_icon.png',
                  width: 24,
                ),
                Image.asset(
                  'assets/images/icons/qr_icon.png',
                  width: 24,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
