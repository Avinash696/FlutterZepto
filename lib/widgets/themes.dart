
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) =>ThemeData(

          primaryColor: Colors.deepPurpleAccent,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.3,
            iconTheme: const IconThemeData(color: Colors.black),
            toolbarTextStyle: Theme.of(context).textTheme.bodySmall,
            titleTextStyle: Theme.of(context).textTheme.headline6,

          )
  );

  static ThemeData darkTheme(BuildContext context) =>ThemeData(
    brightness: Brightness.dark,
  );
}