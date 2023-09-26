import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Image.asset("assets/images/radio_header.png"),
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    size: 55,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    size: 55,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    size: 55,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
