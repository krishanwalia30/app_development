import 'package:flutter/material.dart';
import 'package:startup_namer/pages/home_page.dart';
import 'package:startup_namer/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup_namer/utils/routes.dart';

void main() {
  // WidgetApp , MaterialApp, CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily),
      
      initialRoute: MyRoutes.homeRoute,

      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage()
      }
      
    );

    
  }
}
