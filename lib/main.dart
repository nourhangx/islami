import 'package:flutter/material.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';

import 'home/HomeScreen.dart';

void main() {
  runApp(MainApplication());
}

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: MyThemeData.primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darkTheme = ThemeData(
    primaryColor: MyThemeData.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
    ),
  );
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      title: 'Islami',
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScreen.routName: (buildContext) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );

  }
}


