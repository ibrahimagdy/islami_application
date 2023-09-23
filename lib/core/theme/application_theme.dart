import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff242424)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedIconTheme: IconThemeData(
        color: Color(0xff242424),
        size: 35,
      ),
      selectedItemColor: Color(0xff242424),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffF8F8F8),
        size: 32,
      ),
      unselectedItemColor: Color(0xffF8F8F8),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Color(0xff242424),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xff242424),
        )),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff242424)),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
