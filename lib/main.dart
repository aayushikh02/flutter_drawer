import 'package:flutter/material.dart';
import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'First_App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage()
    );
  }
}

