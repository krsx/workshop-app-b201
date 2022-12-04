import 'package:flutter/material.dart';
import 'package:workshop_app_b201/bottom_navigation_bar/screens/bottom_navigation_bar_widgets.dart';
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
          // SliverAppBar(
          //   floating: true,
          //   snap: true,
          //   backgroundColor: ColorTheme.whiteColor,
          //   centerTitle: true,
          //   automaticallyImplyLeading: false,
          //   elevation: 0.4,
          //   leading: Center(
          //     child: Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(100),
          //         color: ColorTheme.whiteColor,
          //       ),
          //       child: GestureDetector(
          //         onTap: () {},
          //         child: Image.asset(
          //           "assets/images/profile_2.png",
          //           width: 28,
          //         ),
          //       ),
          //     ),
          //   ),
          //   title: Center(
          //     child: Image.asset(
          //       ('assets/images/twitter.png'),
          //       width: 40,
          //     ),
          //   ),
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.auto_awesome_outlined,
          //         size: 28,
          //         color: ColorTheme.blackColor,
          //       ),
          //     ),
          //   ],
          // ),
          appBarHome(),
        ],
        body: ListView(
          children: const [
            TwitterPost(),
            TwitterPost(),
            TwitterPost(),
            TwitterPost(),
          ],
        ),
      )),
    );
  }
}
