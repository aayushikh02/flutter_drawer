import 'package:flutter/material.dart';


import '.././widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  // final String title;

  // MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First_App')),
      body: Center(child: Text('My Home Page!')),
      drawer: Drawer1(),
    );
  }
}