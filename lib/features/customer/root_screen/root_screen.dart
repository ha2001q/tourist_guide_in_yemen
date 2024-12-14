import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tourist_guide_in_yemen/features/customer/home%20screen/presentation/pages/home.dart';
import 'package:tourist_guide_in_yemen/features/customer/profile_screen/presentation/pages/profile_screen.dart';
import '../favorite_screen/presentation/pages/favorite_screen.dart';
import '../setting_screen/setting_screen.dart';

class RootScreen extends StatefulWidget {
   RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  // late List<String> titleList;
  int bottomNavIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    FavoriteScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   titleList = [
  //     locales.string(context, "home"),
  //     locales.string(context, "setting"),
  //     locales.string(context, "favorite"),
  //     locales.string(context, "profile"),
  //   ];
  // }

  // final List<IconData> lineIconsList = [
  //   LineIcons.home,
  //   LineIcons.alternateMedicalChat,
  //   LineIcons.heart,
  //   LineIcons.user,
  // ];
  //
  // final List<String> iconSvg = [
  //   Images.homeIcon,
  //   Images.heartIcon,
  //   Images.profileIcon,
  //   Images.settingIcon,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: bottomNavIndex != 0 && bottomNavIndex != 2 && bottomNavIndex != 3
      //     ? buildAppBar()
      //     : null,
      body: pages[bottomNavIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 900),
            gap: 8,
            onTabChange: (index) => setState(() => bottomNavIndex = index),//change the pages
            selectedIndex: bottomNavIndex,
            color: Colors.grey[800],
            activeColor: Colors.purple,
            iconSize: 24,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs:  [
              GButton(icon: LineIcons.home, text: "Home"),
              GButton(icon: LineIcons.heart, text: 'Favorite'),
              GButton(icon: LineIcons.user, text: 'Profile'),
              GButton(icon: LineIcons.cog, text: 'Setting'),
            ],
          ),
        ),
      ),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     title: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           titleList[bottomNavIndex],
  //           style: const TextStyle(
  //             fontWeight: FontWeight.w500,
  //             color: Colors.black,
  //             fontSize: 24,
  //           ),
  //         ),
  //         const Icon(Icons.notifications, color: Colors.black, size: 30.0),
  //       ],
  //     ),
  //     elevation: 0.0,
  //   );
  // }
}



