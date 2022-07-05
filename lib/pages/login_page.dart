import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20.0),
        const Text(
          "Welcome to my app",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
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
              const SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    print("the login button was clicked");
                  },
                  child: const Text("LOGIN"))
            ],
          ),
        )
      ]),
    );
  }
}
