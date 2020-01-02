import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/main/main_screen.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPageScreen(),
    );
  }
}
