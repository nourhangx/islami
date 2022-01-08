import 'package:flutter/material.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';

class SuraNameWidget extends StatelessWidget {
  String suraName;

  int index;

  SuraNameWidget(this.index, this.suraName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routName,
            arguments: SuraDetailsArgs(index, suraName));
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          suraName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
