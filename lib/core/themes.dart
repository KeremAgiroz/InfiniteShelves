//temalandır ve renkler +++
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// burada temalandirma + renkler + ... yazicaz.

import 'package:flutter/material.dart';
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
  "onError": Colors.white,
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
  "onError": Color.fromARGB(255, 179, 179, 179),
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

// final lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: Colors.blue,
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   textTheme: GoogleFonts.latoTextTheme().copyWith(
//     titleSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     titleMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     titleLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodySmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodyMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodyLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineSmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displaySmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displayMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displayLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//   ),
// );

// final darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: Colors.blue,
//   textTheme: GoogleFonts.latoTextTheme().copyWith(
//     titleSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     titleMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     titleLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodySmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodyMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodyLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineSmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displaySmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displayMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displayLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//   ),
// );







// const colors = {
//   "primary": Color.fromARGB(200, 201, 170, 100),
//   "onPrimary": Color.fromARGB(255, 240, 78, 103),
//   "secondary": Color.fromARGB(255, 130, 175, 155),
//   "onSecondary": Color.fromARGB(255, 135, 178, 159),
//   "surface": Color.fromARGB(255, 250, 205, 176),
//   "onSurface": Color.fromARGB(255, 244, 117, 129),
// };

// const darkColors = {
//   "primary": Color.fromARGB(200, 201, 170, 100),
//   "onPrimary": Color.fromARGB(255, 240, 78, 103),
//   "secondary": Color.fromARGB(255, 130, 175, 155),
//   "onSecondary": Color.fromARGB(255, 199, 199, 170),
//   "surface": Color.fromARGB(255, 250, 205, 176),
//   "onSurface": Color.fromARGB(255, 248, 156, 156),
// };

// final lightTheme = ThemeData(
//   brightness: Brightness.light,
//   colorScheme: ColorScheme(
//     brightness: Brightness.light,
//     primary: colors["primary"]!,
//     onPrimary: colors["onPrimary"]!,
//     secondary: colors["secondary"]!,
//     onSecondary: colors["onSecondary"]!,
//     error: colors["error"]!,
//     onError: colors["onError"]!,
//     surface: colors["surface"]!,
//     onSurface: colors["onSurface"]!,
//   ),
//   textTheme: TextTheme(
//     bodySmall: GoogleFonts.roboto(
//         // fontSize: 32,
//         ),
//     bodyMedium: GoogleFonts.roboto(),
//     bodyLarge: GoogleFonts.roboto(),
//     labelSmall: GoogleFonts.roboto(),
//     labelMedium: GoogleFonts.roboto(),
//     labelLarge: GoogleFonts.roboto(),
//     titleSmall: GoogleFonts.roboto(),
//     titleMedium: GoogleFonts.roboto(),
//     titleLarge: GoogleFonts.roboto(),
//     headlineSmall: GoogleFonts.aBeeZee(),
//     headlineMedium: GoogleFonts.aBeeZee(),
//     headlineLarge: GoogleFonts.aBeeZee(),
//     displaySmall: GoogleFonts.abrilFatface(),
//     displayMedium: GoogleFonts.abrilFatface(),
//     displayLarge: GoogleFonts.abrilFatface(),
//   ),
// );

// final darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: ColorScheme.dark(
//     brightness: Brightness.dark,
//     primary: darkColors["primary"]!,
//     onPrimary: darkColors["onPrimary"]!,
//     secondary: darkColors["secondary"]!,
//     onSecondary: darkColors["onSecondary"]!,
//     error: darkColors["error"]!,
//     onError: darkColors["onError"]!,
//     surface: darkColors["surface"]!,
//     onSurface: darkColors["onSurface"]!,
//   ),
//   textTheme: TextTheme(
//     bodySmall: GoogleFonts.roboto(
//         // fontSize: 30,
//         ),
//     bodyMedium: GoogleFonts.roboto(),
//     bodyLarge: GoogleFonts.roboto(),
//     labelSmall: GoogleFonts.roboto(),
//     labelMedium: GoogleFonts.roboto(),
//     labelLarge: GoogleFonts.roboto(),
//     titleSmall: GoogleFonts.roboto(),
//     titleMedium: GoogleFonts.roboto(),
//     titleLarge: GoogleFonts.roboto(),
//     headlineSmall: GoogleFonts.aBeeZee(),
//     headlineMedium: GoogleFonts.aBeeZee(),
//     headlineLarge: GoogleFonts.aBeeZee(),
//     displaySmall: GoogleFonts.abrilFatface(),
//     displayMedium: GoogleFonts.abrilFatface(),
//     displayLarge: GoogleFonts.abrilFatface(),
//   ),
// );
