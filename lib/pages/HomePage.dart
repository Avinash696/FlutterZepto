import 'package:flutter/material.dart';
import 'package:zepto/models/catalog.dart';
import 'package:zepto/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList  = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Zepto"),
      ),
      // body: const Center(
      //   child: Text("You are on Home Page"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                  // item: CatalogModel.items[index],
                  item: dummyList[index],
              );
            }),
      ),
      // drawer: const Drawer(
      // ),
      drawer: const MyDrawer(),
    );
  }
}
