import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zepto/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Image(image: AssetImage('images/undraw_login.png')),
                // Image(image: AssetImage("images/login_page.png")),
                const SizedBox(
                  height: 20.0,
                ),

                Text(
                  "Welcome $name",
                  style: const TextStyle(
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 40.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username"),
                            onChanged: (value) {
                              name = value;
                              setState(() {}); // calls build page
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "UserName Can't be Empty";
                              } else if (value.length < 5) {
                                return "Username Length should be grater than 5";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Can't be Empty";
                          } else if (value.length < 5) {
                            return "Password Length should be grater than 5";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // ElevatedButton(
                      //   child:  const Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize:  const Size(100, 40)), onPressed: () {
                      //     if (kDebugMode) {
                      //       print("hi code");
                      //       // Navigator.push(context, route)
                      //       Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      //     }
                      // },
                      // )
                      InkWell(
                        // onTap:()async{
                        //
                        // } ,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          // width: 100,
                          width: changeButton ? 50 : 100,
                          height: 40,
                          alignment: Alignment.center,
                          // color: Colors.deepPurple,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.yellow,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 20 : 8)),
                          duration: const Duration(seconds: 1),
                          // alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
