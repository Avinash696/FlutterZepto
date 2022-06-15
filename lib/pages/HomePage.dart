
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("My Zepto"),
      ),
      body: const Center(
       child: Text("You are on Home Page"),
      ),
      drawer: const Drawer(
      ),
    );
  }
}
