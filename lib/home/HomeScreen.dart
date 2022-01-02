import 'package:flutter/material.dart';
import 'package:islami/home/Quran/quranTab.dart';
import 'package:islami/home/Radio/radioTab.dart';
import 'package:islami/home/hadeth/hadethTab.dart';
import 'package:islami/home/tasbeh/tasbehTab.dart';
import 'package:islami/main.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curruntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/main_background.png',
              fit: BoxFit.fill,
            )),
        Scaffold(
          //backgroundColor:Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Islami'),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.primaryColor),
            child: BottomNavigationBar(
              currentIndex: curruntIndex,
              onTap: (index) {
                curruntIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                  label: 'Hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: 'Radio',
                ),
              ],
            ),
          ),
          body: Container(
            child: views[curruntIndex],
          ),
        ),
      ],
    );
  }

  List<Widget> views = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
