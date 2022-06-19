class CatalogModel {
  static List<Item> items = [
    Item(
        1,
        "Pizza  Pro",
        "dish made typically of flattened bread",
        999,
        10,
        "#33505a",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpZjRRNuwUhDEgRKZUKjmcp8sSnIytBNl-aA&usqp=CAU")

    // Item(id: 1, name:"Pizza  Pro" , desc: "dish made typically of flattened bread",
    //     price: 999, discount: 10, color: "#33505a", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpZjRRNuwUhDEgRKZUKjmcp8sSnIytBNl-aA&usqp=CAU")
    // ];

    //   Item(1, "iPhone 12 Pro", "Apple iPhone 12th generation", 999, 777, "#33505a",
    //       "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000")
    //
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final num discount;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.discount, this.color,
      this.image);

  // Item(
  //     {
  //       required this.id,
  //     required this.name,
  //     required this.desc,
  //     required this.price,
  //     required this.discount,
  //     required this.color,
  //     required this.image});

//map to class (decoding)
//   factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       id: map["id"],
//       name: map["name"],
//       desc: map["desc"],
//       price: map["price"],
//       color: map["color"],
//       image: map["image"],
//       discount: map["discount"],
//     );
//   }

  //class to map (encoding )
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "discount": discount,
        "color": color,
        "image": image,
      };
}

final products = [
  Item(1, "iPhone 12 Pro", "Apple iPhone 12th generation", 999, 777, "#33505a",
      "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000")

  // Item(id: 1, name:"Pizza  Pro" , desc: "dish made typically of flattened bread",
  //     price: 999, discount: 10, color: "#33505a", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpZjRRNuwUhDEgRKZUKjmcp8sSnIytBNl-aA&usqp=CAU")
];
