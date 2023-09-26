import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_screen.dart';
import 'package:islami_application/moduls/quran_screen/quran_screen.dart';
import 'package:islami_application/moduls/radio_screen/radio_screen.dart';
import 'package:islami_application/moduls/settings_screen/settings_screen.dart';
import 'package:islami_application/moduls/tasbeh_screen/tasbeh_screen.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home Layout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => HomeLayoutState();
}

class HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const QuranScreen(),
    const HadethScreen(),
    TasbehScreen(),
    RadioScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(appProvider.backgroundImage()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/quran_icon.png"),
              ),
              label: local.quran,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/hadeth_icon.png"),
              ),
              label: local.hadeth,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/sebha_icon.png"),
              ),
              label: local.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/radio_icon.png"),
              ),
              label: local.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: local.settings,
            ),
          ],
        ),
      ),
    );
  }
}
