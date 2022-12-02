import 'package:flutter/material.dart';
import 'package:workshop_app_b201/bottom_navigation_bar/widgets/floating_action_button_widget.dart';
import 'package:workshop_app_b201/home/screens/home_screens.dart';
import 'package:workshop_app_b201/message/screens/message_screen.dart';
import 'package:workshop_app_b201/notification/screens/notification_screen.dart';
import 'package:workshop_app_b201/search/screens/search_screen.dart';
import 'package:workshop_app_b201/themes/color_themes.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: ColorTheme.blackColor,
          unselectedItemColor: ColorTheme.lightGrayColor,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.house_rounded,
                size: 32,
              ),
              icon: Icon(
                Icons.house_outlined,
                size: 32,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search_rounded,
                size: 32,
              ),
              icon: Icon(
                Icons.search_outlined,
                size: 32,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.notifications_rounded,
                size: 32,
              ),
              icon: Icon(
                Icons.notifications_outlined,
                size: 32,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.mail_rounded,
                size: 32,
              ),
              icon: Icon(
                Icons.mail_outlined,
                size: 32,
              ),
              label: '',
            )
          ]);
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomeScreens();
        case 1:
          return SearchScreen();
        case 2:
          return NotificationScreen();
        case 3:
          return MessageScreen();
        default:
          return SizedBox();
      }
    }

    return Scaffold(
      body: body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: bottomNavigationBar(),
      floatingActionButton: floatingActionButton(),
    );
  }
}
