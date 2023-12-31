import 'package:flutter/material.dart';

import 'package:shamaa/screens/home_screen.dart';
import 'package:shamaa/screens/leaderboards_screen.dart';
import 'package:shamaa/screens/profile_screen.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:shamaa/style/custom_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, this.index});
  final int? index;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void navigateToLeaderboards() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LeaderboardsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      borderRadius: 65.5,
      resizeToAvoidBottomInset: false,
      color: purple,
      selectedIconColor: white,
      unselectedIconColor: white,
      items: [
        FloatingNavBarItem(
            iconData: Icons.home,
            page: HomeScreen(index: widget.index),
            title: ''),
        FloatingNavBarItem(
            iconData: Icons.wallet_giftcard,
            page: LeaderboardsScreen(),
            title: ''),
        FloatingNavBarItem(
            iconData: Icons.person,
            page: ProfileScreen(index: widget.index),
            title: ''),
      ],
      horizontalPadding: 15.0,
      hapticFeedback: true,
      showTitle: false,
    );
  }
}
