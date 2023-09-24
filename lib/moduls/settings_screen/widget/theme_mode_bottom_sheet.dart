import 'package:flutter/material.dart';
import 'package:islami_application/moduls/settings_screen/widget/selected_option_widget.dart';
import 'package:islami_application/moduls/settings_screen/widget/unselected_option_widget.dart';

class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWidget(
            selectedTitle: 'Light Mode',
          ),
          const SizedBox(height: 25),
          const UnselectedOptionWidget(unselectedTitle: 'Dark Mode'),
        ],
      ),
    );
  }
}
