import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/Quran/VerseWidget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'suraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) readSura(args.index);
    return Stack(children: [
      Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/main_background.png',
            fit: BoxFit.fill,
          )),
      Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
            padding: EdgeInsets.all(8),
            child: ayat.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return VerseWidget(ayat[index], index);
                    },
                    itemCount: ayat.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 1,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(vertical: 24),
                      );
                    },
                  )),
      ),
    ]);
  }

  void readSura(int index) async {
    //open file and read it index+1.txt
    String fileName = 'assets/files/${index + 1}.txt'; //open file
    String fileContent = await rootBundle.loadString(fileName); //read it
    List<String> verses = fileContent.split('\n');
    ayat = verses;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;

  int index;

  SuraDetailsArgs(this.index, this.name);
}
