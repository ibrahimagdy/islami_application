import 'package:flutter/material.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_screen.dart';
import 'package:islami_application/moduls/quran_screen/quran_screen.dart';
import 'package:islami_application/moduls/radio_screen/radio_screen.dart';
import 'package:islami_application/moduls/settings_screen/settings_screen.dart';
import 'package:islami_application/moduls/tasbeh_screen/tasbeh_screen.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home Layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => HomeLayoutState();
}

class HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 4;
  List<Widget> screens = [
    SettingsScreen(),
    RadioScreen(),
    TasbehScreen(),
    HadethScreen(),
    QuranScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/home_layout_bg_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "إسلامي",
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "الإعدادات",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/radio_icon.png"),
              ),
              label: "الراديو",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/sebha_icon.png"),
              ),
              label: "التسبيح",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hadeth_icon.png"),
              ),
              label: "الأحاديث",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/quran_icon.png"),
              ),
              label: "القرآن",
            ),
          ],
        ),
      ),
    );
  }
}
