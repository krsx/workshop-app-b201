import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';
import 'package:google_fonts/google_fonts.dart';

class TwitterPost extends StatelessWidget {
  const TwitterPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: ColorTheme.extraLightGrayColor,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/profile_2.png",
                width: 38,
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "KCRIMSON_69",
                      style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "@bandarfilmindo",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.darkGrayColor,
                      ),
                    ),
                    // RichText(text: TextSpan(children: [])),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: 3,
                      height: 3,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorTheme.darkGrayColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "11 jam",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.darkGrayColor,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_vert_rounded,
                      color: ColorTheme.lightGrayColor,
                      size: 18,
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Halo semuanya ini merupakan dummy text yang dibuat khusus untuk memastikan apakah layout sudah sama dengan UI pada TWITTER itu sendiri!",
                  style: GoogleFonts.inter(
                    color: ColorTheme.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/post_image_1.png",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/icons/comment_icon.png",
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            color: ColorTheme.darkGrayColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/icons/retweet_icon.png",
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            color: ColorTheme.darkGrayColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/icons/like_icon.png",
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            color: ColorTheme.darkGrayColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/icons/share_icon.png",
                        width: 20,
                      ),
                    ),
                    const SizedBox(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
