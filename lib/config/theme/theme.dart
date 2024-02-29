import 'package:flutter/material.dart';

class AppTheme {
  static themeData(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
          headlineMedium: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white)),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff52B2bF),
          onPrimary: Colors.black,
          secondary: Color(0xff82EEFD),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black));
}
