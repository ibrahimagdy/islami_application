import 'package:flutter/material.dart';

class UnselectedOptionWidget extends StatelessWidget {
  final String unselectedTitle;

  const UnselectedOptionWidget({super.key, required this.unselectedTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(unselectedTitle),
    );
  }
}
