//temalandır ve renkler +++
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// burada temalandirma + renkler + ... yazicaz.

import 'package:google_fonts/google_fonts.dart';

// import 'constants.dart';

// theme_provider.dart
class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(200, 216, 180, 40),
  "onPrimary": Color.fromARGB(255, 226, 230, 231),
  "secondary": Color.fromARGB(255, 106, 190, 236),
  "onSecondary": Color.fromARGB(255, 216, 180, 40),
  "surface": Color.fromARGB(255, 226, 230, 231),
  "onSurface": Color.fromARGB(255, 31, 100, 177),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Color.fromARGB(255, 31, 100, 177),
};

const darkColors = {
  "primary": Color.fromARGB(200, 170, 150, 30),
  "onPrimary": Color.fromARGB(255, 226, 230, 231),
  "secondary": Color.fromARGB(255, 106, 190, 236),
  "onSecondary": Color.fromARGB(255, 170, 150, 30),
  "surface": Color.fromARGB(255, 31, 50, 75),
  "onSurface": Color.fromARGB(255, 170, 150, 3),
  "success": Color.fromARGB(255, 0, 90, 0),
  "error": Color.fromARGB(255, 179, 0, 0),
  "onError": Color.fromARGB(255, 31, 50, 75),
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.alef(),
    labelMedium: GoogleFonts.alef(),
    labelLarge: GoogleFonts.alef(),
    titleSmall: GoogleFonts.alef(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.actor(),
    headlineMedium: GoogleFonts.alikeAngular(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.alef(),
    displayMedium: GoogleFonts.alef(),
    displayLarge: GoogleFonts.akatab(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.alef(),
    labelMedium: GoogleFonts.alef(),
    labelLarge: GoogleFonts.alef(),
    titleSmall: GoogleFonts.alef(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.actor(),
    headlineMedium: GoogleFonts.alikeAngular(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.alef(),
    displayMedium: GoogleFonts.alef(),
    displayLarge: GoogleFonts.akatab(),
  ),
);
