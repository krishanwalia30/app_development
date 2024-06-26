import 'package:flutter/material.dart';
import 'package:startup_namer/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()){
      setState(() {
        changeButton = true;  
      });
                  
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        changeButton = false;
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,

      child: SingleChildScrollView(

        child: Form(

          key: _formkey,

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
                        hintText: "Enter Username", labelText: "Username"
                      ),
                    
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                        
                      }
                    },

                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },

                  ),

                  TextFormField(

                    obscureText: true,

                    decoration: const InputDecoration(

                      hintText: "Enter Password", labelText: "Password"
                    ),

                    validator: (value){
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      }
                      else if(value.length < 8){
                        return "Length should be minimum 8";
                      }
                    },

                  ),

                  const SizedBox(height: 40.0),

                  // code for the functioning of the button
                  Material(

                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(changeButton? 50 : 8),

                    child: InkWell(

                      onTap: () => moveToHome(context),
                      

                      child: AnimatedContainer(

                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton? 50 : 150,
                        alignment: Alignment.center,
                    
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
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
