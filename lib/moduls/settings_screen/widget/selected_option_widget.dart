import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String selectedTitle;

  SelectedOptionWidget({required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(selectedTitle),
          Icon(Icons.check),
        ],
      ),
    );
  }
}
