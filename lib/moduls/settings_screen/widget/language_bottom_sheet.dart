import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/moduls/settings_screen/widget/selected_option_widget.dart';
import 'package:islami_application/moduls/settings_screen/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.isEnglish()
                ? SelectedOptionWidget(selectedTitle: local.english)
                : UnselectedOptionWidget(unselectedTitle: local.english),
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: appProvider.isEnglish()
                ? UnselectedOptionWidget(unselectedTitle: local.arabic)
                : SelectedOptionWidget(selectedTitle: local.arabic),
          ),
        ],
      ),
    );
  }
}
