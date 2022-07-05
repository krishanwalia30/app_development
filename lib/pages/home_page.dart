import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int age = 20;
    double numsdf = 100.0342;
    String name = "Krishan Walia";

    return Scaffold(
      appBar: AppBar(
        title: Text("Krishan's App"),
      ),
      
      body: Center(
        child: Container(
          child: Text("the name is $name, i am $age years old"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
