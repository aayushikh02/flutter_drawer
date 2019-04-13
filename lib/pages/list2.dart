import 'package:flutter/material.dart';

import '.././widgets/drawer.dart';

class List2 extends StatefulWidget {
  String name = "", description = "";
  // double amount = 0.0;
  List2(Map key) {
    key.forEach(test);
  }

  void test(key, value) {
    if (key == "name") {
      this.name = value;
    }
    else if(key=="description"){
      this.description=value;
    }
    // else{
    //    this.amount=value;
    // }
  }

  @override
  State<StatefulWidget> createState() {
    return _MyAppState( this.name, this.description);
  }
}

class _MyAppState extends State<List2> {
  String name;
  String description;
  // double amount;
  _MyAppState( name, description){
    this.name = name;
    this.description=description;
    // this.amount= double.parse(amount.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List2'),
      ),
      body:Container(
        padding: EdgeInsets.all(12.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              height: 54.0,
              padding: EdgeInsets.all(12.0),
            ),
            Text("Your name: " + name),
            Text("Your Description:" +description),
            // Text("Amount : " +amount),Text(amount),
          ],
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
