import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zepto/utils/routes.dart';

class LoginPage extends StatefulWidget {
   const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            children: [
               const Image(image: AssetImage('images/undraw_login.png')),
              // Image(image: AssetImage("images/login_page.png")),
               const SizedBox(
                height: 20.0,
              ),

               Text(
                "Welcome $name",
                style:  const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "sand",
                  color: Colors.pink,
                ),
              ),
               const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                 const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Column(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        decoration:  const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        onChanged: (value){
                          name = value;
                          setState(() {
                          }); // calls build page
                        },
                      ),
                    ],
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:  const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                   const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child:  const Text("Login"),
                    style: TextButton.styleFrom(minimumSize:  const Size(100, 40)), onPressed: () {
                      if (kDebugMode) {
                        print("hi code");
                        // Navigator.push(context, route)
                        Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      }
                  },
                  )
                ],
              ),
              )
            ],
          ),
        )
    );
  }
}
