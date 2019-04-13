import 'package:flutter/material.dart';
import '../widgets/add-data.dart';

import '.././widgets/drawer.dart';

class List1 extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List1'),
      ),
      body: Center(
        child: Input(),
      ),
      drawer: Drawer1(),
    );
  }
}

