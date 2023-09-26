import 'package:flutter/material.dart';

class UnselectedOptionWidget extends StatelessWidget {
  final String unselectedTitle;

  const UnselectedOptionWidget({super.key, required this.unselectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(unselectedTitle));
  }
}
