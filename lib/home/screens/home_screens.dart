import 'package:flutter/material.dart';
import 'package:workshop_app_b201/bottom_navigation_bar/screens/bottom_navigation_bar_widgets.dart';

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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Center(child: appBarHome())),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
