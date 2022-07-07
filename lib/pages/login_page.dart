import 'package:flutter/material.dart';
import 'package:startup_namer/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

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
          Text(
            "Welcome $name",
            style: const TextStyle(
                color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, fontSize: 28),
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                const SizedBox(height: 40.0),

                // ElevatedButton(
                //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     },
                //     child: const Text(
                //       "LOGIN",
                //       style: TextStyle(fontSize: 20),
                //     )
                // )

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;  
                    });

                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changeButton? 50 : 150,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                      
                
                    ),
                
                    child: changeButton? Icon(Icons.done,color: Colors.white,) : const Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
