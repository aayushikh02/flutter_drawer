import 'package:flutter/material.dart';

import '../pages/list1.dart';
// import '../pages/list2.dart';
import '../pages/home.dart';

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the Drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.

        padding: EdgeInsets.zero,

        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // Update the state of the app

              //-----------------------------To Push the page i.e., Navigation   Home---

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MyHomePage(),
                ),
              ); //New page opens

              // Then close the drawer

              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('List 1'),
            onTap: () {
              // Update the state of the app

              //-----------------------------To Push the page i.e., Navigation

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => List1(),
                ),
              ); //New page opens

              // Then close the drawer

              //  Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('List 2'),
            onTap: () {
              // Update the state of the app

              //-----------------------------To Push the page i.e., Navigation

              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => List2(),
              //   ),
              // ); //New page opens

              // Then close the drawer

              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
