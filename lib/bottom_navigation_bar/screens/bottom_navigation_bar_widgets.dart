import 'package:flutter/material.dart';
import 'package:workshop_app_b201/bottom_navigation_bar/widgets/floating_action_button_widget.dart';
import 'package:workshop_app_b201/home/screens/home_screens.dart';
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
      return Container(
        decoration: const BoxDecoration(
          color: ColorTheme.whiteColor,
          border: Border(
            top: BorderSide(color: ColorTheme.extraLightGrayColor, width: 1),
          ),
        ),
        child: BottomNavigationBar(
            backgroundColor: ColorTheme.whiteColor,
            elevation: 5,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedItemColor: ColorTheme.blackColor,
            unselectedItemColor: ColorTheme.lightGrayColor,
            onTap: (index) => setState(() {
                  currentIndex = index;
                }),
            items: [
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/home_fill_icon.png",
                    width: 24,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/home_icon.png",
                    width: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/search_fill_icon.png",
                    width: 24,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/search_icon.png",
                    width: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/notif_fill_icon.png",
                    width: 24,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/notif_icon.png",
                    width: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/mail_fill_icon.png",
                    width: 24,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/icons/mail_icon.png",
                    width: 24,
                  ),
                ),
                label: '',
              )
            ]),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomeScreens();
        case 1:
          return const SearchScreen();
        case 2:
          return const SizedBox();
        case 3:
          return const SizedBox();
        default:
          return const SizedBox();
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
