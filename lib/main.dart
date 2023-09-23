import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/application_theme.dart';
import 'package:islami_application/layout/home_layout.dart';
import 'package:islami_application/moduls/quran_screen/quran_details.dart';
import 'package:islami_application/moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
    );
  }
}
