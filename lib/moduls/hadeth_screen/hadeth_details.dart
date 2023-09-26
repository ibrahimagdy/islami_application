import 'package:flutter/material.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_screen.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

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
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          appProvider.backgroundImage(),
        ),
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
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              const Divider(
                thickness: 2.5,
                indent: 40,
                endIndent: 40,
                height: 10,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    args.content,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onPrimary,
                      height: 1.9,
                    ),
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
