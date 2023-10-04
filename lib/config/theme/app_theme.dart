import 'package:flutter/material.dart';

const scaffoldBackgroundColor = Color.fromARGB(255, 161, 213, 255);
const colorSeed = Color.fromARGB(221, 8, 8, 8);

class AppTheme {
  ThemeData getTheme() => ThemeData(
        // General
        useMaterial3: true,
        colorSchemeSeed: colorSeed,
        // scaffold Background Color
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      );
}
