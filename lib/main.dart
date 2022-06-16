import 'package:flutter/material.dart';
import 'package:zepto/pages/HomePage.dart';
import 'package:zepto/pages/LoginPage.dart';
import 'package:zepto/widgets/themes.dart';

void main() {
  runApp(const Zepto());
}

class Zepto extends StatelessWidget {
  const Zepto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: HomePage(),
      initialRoute: '/login',
      routes: {
        // "/": (context) => HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
