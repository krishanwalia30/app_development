import 'package:flutter/material.dart';
import 'package:startup_namer/pages/home_page.dart';
import 'package:startup_namer/pages/login_page.dart';

void main() {
  // WidgetApp , MaterialApp, CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage()
        });
  }
}
