import 'package:boutique_app/screens/bottom_nav.dart';
import 'package:boutique_app/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.appTheme(),
      home: const BottomNav(),
    );
  }
}
