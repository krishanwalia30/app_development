import 'package:flutter/material.dart';
import 'package:startup_namer/home_page.dart';

void main() {
  // WidgetApp , MaterialApp, CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
