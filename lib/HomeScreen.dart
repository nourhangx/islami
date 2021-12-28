import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String RouteName = 'home' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('islami app' , style: TextStyle(
            fontWeight: FontWeight.bold),),
      ),
      body:Text('allah', style: TextStyle(fontSize: 45),) ,
    );
  }
}
