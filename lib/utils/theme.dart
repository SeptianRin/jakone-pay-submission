import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF687DAF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFFf37b67),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFFEFFFF),
  onSurface: Color(0xFF3b3b3b),
);

final ThemeData myTheme = _myTheme();

ThemeData _myTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme),
  );
}
