
import 'package:flutter/material.dart';
import 'package:zepto/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.amber,
      child: ListTile(
        onTap: () => {
          print("${item.name} pressed")
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "Actual Price-\$${item.price} \n Offer Price- Rs${item.discount}",
          textScaleFactor: 0.7,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
    );
  }
}
