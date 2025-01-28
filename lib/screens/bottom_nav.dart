import 'package:boutique_app/screens/home/home.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Theme.of(context).primaryColor,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(
              iconData: Icons.home_outlined, page: const Home(), title: 'Home'),
          FloatingNavBarItem(
              iconData: Icons.local_hospital_outlined,
              page: Container(),
              title: 'Doctors'),
          FloatingNavBarItem(
              iconData: Icons.alarm, page: Container(), title: 'Reminders'),
          FloatingNavBarItem(
              iconData: Icons.pending_actions_outlined,
              page: Container(),
              title: 'Records'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),
    );
  }
}
