import 'package:flutter/material.dart';
import 'package:workshop_app_b201/route_screens/screens/route_screens.dart';
import 'package:workshop_app_b201/home/widgets/twitter_post_widget.dart';

import '../../themes/color_themes.dart';
import '../widgets/appbar_home_widgets.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.whiteColor,
      body: SafeArea(
          child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          Builder(
            builder: (context) {
              return appBarHome();
            },
          )
        ],
        body: ListView(
          children: const [
            TwitterPost(
              profileImg: "assets/images/profile_1.png",
              caption: "Ini adalah caption!",
              isVerified: false,
              name: "Krisna Erlangga",
              time: 11,
              username: "krsx10",
            ),
            TwitterPost(
              profileImg: "assets/images/profile_2.png",
              caption: "Ini adalah caption lainnya!",
              isVerified: true,
              name: "Putri Suwitanty",
              time: 12,
              username: "putrijelek",
              postImg: "assets/images/post_image_2.png",
            ),
            TwitterPost(
              profileImg: "assets/images/profile_1.png",
              caption: "Ini adalah caption wat du helll!",
              isVerified: true,
              name: "Krisna Suwito",
              time: 11,
              username: "kkk123",
            ),
            TwitterPost(
              profileImg: "assets/images/profile_2.png",
              caption: "Ini adalah caption omagaaaa!",
              isVerified: false,
              name: "Putri Suwitanty",
              time: 12,
              username: "putrijelek",
              postImg: "assets/images/post_image_1.png",
            ),
          ],
        ),
      )),
    );
  }
}
