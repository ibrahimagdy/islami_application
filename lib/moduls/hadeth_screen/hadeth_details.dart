import 'package:flutter/material.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_screen.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "Hadeth Details";

  const HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/home_layout_bg_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(right: 29, left: 29, top: 41, bottom: 85),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: const Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyMedium,
              ),
              Divider(
                thickness: 1.5,
                color: theme.primaryColor,
                indent: 40,
                endIndent: 40,
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    args.content,
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
