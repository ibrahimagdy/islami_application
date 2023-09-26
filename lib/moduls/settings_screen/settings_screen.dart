import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/moduls/settings_screen/widget/language_bottom_sheet.dart';
import 'package:islami_application/moduls/settings_screen/widget/settings_item.dart';
import 'package:islami_application/moduls/settings_screen/widget/theme_mode_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 80),
      child: Column(
        children: [
          SettingsItem(
            settingsOptionTitle: local.language,
            settingsOptionSelected:
                appProvider.isEnglish() ? local.english : local.arabic,
            onOptionTab: () {
              showLanguageBottomSheet(context);
            },
          ),
          const SizedBox(height: 30),
          SettingsItem(
            settingsOptionTitle: local.themeMode,
            settingsOptionSelected:
                appProvider.isLight() ? local.lightMode : local.darkMode,
            onOptionTab: () {
              showThemeBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
    );
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeModeBottomSheet(),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
    );
  }
}
