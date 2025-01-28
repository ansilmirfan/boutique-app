import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData appTheme() {
    const Color primaryColor = Color.fromRGBO(248, 158, 168, 1);
    const Color primaryVariant = Color.fromRGBO(238, 128, 138, 1);
    const Color secondaryColor = Color.fromRGBO(255, 198, 204, 1);
    const Color accentColor = Color.fromRGBO(255, 225, 227, 1);

    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme(
        primary: primaryColor,
        primaryContainer: primaryVariant,
        secondary: secondaryColor,
        secondaryContainer: accentColor,
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 2,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
