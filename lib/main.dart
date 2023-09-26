import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/core/theme/application_theme.dart';
import 'package:islami_application/layout/home_layout.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_details.dart';
import 'package:islami_application/moduls/quran_screen/quran_details.dart';
import 'package:islami_application/moduls/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => AppProvider(), child: const MyApplication()),
  );
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadethDetails.routeName: (context) => const HadethDetails(),
      },
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      locale: Locale(appProvider.currentLocal),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
