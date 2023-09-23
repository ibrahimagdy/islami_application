import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/moduls/quran_screen/quran_screen.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "Quran Details";

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) {
      readFiles(args.suraIndex);
    }
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.play_circle, color: Colors.black, size: 30),
                ],
              ),
              Divider(
                thickness: 1.5,
                color: theme.primaryColor,
                indent: 40,
                endIndent: 40,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allVerses.length,
                  itemBuilder: (context, index) => Text(
                    allVerses[index],
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

  readFiles(String index) async {
    var text = await rootBundle.loadString("assets/files/$index.txt");
    setState(() {
      allVerses = text.split('\n');
    });
  }
}
