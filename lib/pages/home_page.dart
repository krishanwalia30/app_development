import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int age = 20;

    String name = "Krishan Walia";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Krishan's App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text("the name is $name, i am $age years old"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
