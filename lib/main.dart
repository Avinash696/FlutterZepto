import 'package:flutter/material.dart';
import 'package:zepto/pages/HomePage.dart';
import 'package:zepto/pages/LoginPage.dart';

void main() {
  runApp(const Zepto());
}

class Zepto extends StatelessWidget {
  const Zepto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return  MaterialApp(
      // home: HomePage(),
      routes: {
        "/":(context) => LoginPage(),
        "/home": (context) =>  HomePage(),
        "/login": (context) =>  LoginPage()
      },
    );
  }
}
