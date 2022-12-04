import 'package:flutter/material.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';
import 'package:google_fonts/google_fonts.dart';

class TwitterPost extends StatefulWidget {
  final String profileImg;
  final String name;
  final String username;
  final int time;
  final bool isVerified;
  final String? postImg;
  final String caption;

  const TwitterPost({
    super.key,
    required this.profileImg,
    required this.name,
    required this.username,
    required this.time,
    required this.isVerified,
    this.postImg,
    required this.caption,
  });

  @override
  State<TwitterPost> createState() => _TwitterPostState();
}

class _TwitterPostState extends State<TwitterPost> {
  int likes = 0;
  bool click = false;

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
                widget.profileImg,
                width: 38,
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        widget.isVerified
                            ? Image.asset(
                                "assets/images/icons/verif_icon.png",
                                width: 16,
                              )
                            : const SizedBox(),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          widget.username,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.darkGrayColor,
                          ),
                        ),
                      ],
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
                      "${widget.time} jam",
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
                  widget.caption,
                  style: GoogleFonts.inter(
                    color: ColorTheme.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 8,
                ),
                (widget.postImg == null)
                    ? SizedBox()
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          widget.postImg!,
                        ),
                      ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/icons/comment_icon.png",
                            width: 16,
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
                            width: 16,
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
                          onTap: () {
                            setState(() {
                              click = !click;
                              if (click) {
                                likes++;
                              } else {
                                likes--;
                              }
                            });
                          },
                          child: click
                              ? Image.asset(
                                  "assets/images/icons/like_fill_icon.png",
                                  width: 16,
                                )
                              : Image.asset(
                                  "assets/images/icons/like_icon.png",
                                  width: 16,
                                ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "$likes",
                          style: GoogleFonts.inter(
                            color: click
                                ? ColorTheme.redColor
                                : ColorTheme.darkGrayColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/icons/share_icon.png",
                        width: 16,
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
