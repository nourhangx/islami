import 'package:flutter/material.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darkTheme = ThemeData(
    primaryColor: MyThemeData.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
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
      routes: {HomeScreen.RouteName: (buildContext) => HomeScreen()},
      initialRoute: HomeScreen.RouteName,
    );

  }
}


