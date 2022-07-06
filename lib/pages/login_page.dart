import 'package:flutter/material.dart';
import 'package:startup_namer/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Welcome to my app",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
