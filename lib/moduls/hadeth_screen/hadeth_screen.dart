import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/moduls/hadeth_screen/hadeth_details.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethContent> allHadeeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeeth.isEmpty) {
      readFiles();
    }
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        const Divider(
          thickness: 3,
        ),
        Text("الأحاديث", style: theme.textTheme.bodyLarge),
        const Divider(
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetails.routeName,
                  arguments: HadethContent(
                      title: allHadeeth[index].title,
                      content: allHadeeth[index].content),
                );
              },
              child: Text(
                allHadeeth[index].title,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: allHadeeth.length,
            separatorBuilder: (context, index) => const Divider(
              thickness: 2,
              indent: 80,
              endIndent: 80,
              height: 16,
            ),
          ),
        ),
      ],
    );
  }

  readFiles() async {
    String allHadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = allHadethContent.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);

      HadethContent hadethContent =
          HadethContent(title: title, content: content);
      setState(() {
        allHadeeth.add(hadethContent);
      });
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
