import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main () {

}

class MainApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami' ,
      routes: {
        HomeScreen.RouteName : (buildContext) => HomeScreen()
      },
      initialRoute:HomeScreen.RouteName ,
    );

  }
}


