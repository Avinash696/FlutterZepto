class CatalogModel{
  static final items = [
    Item(1, "Pizza  Pro", "dish made typically of flattened bread", 999, 10,
        "#33505a",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpZjRRNuwUhDEgRKZUKjmcp8sSnIytBNl-aA&usqp=CAU")

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

  Item(this.id, this.name,  this.desc, this.price, this.discount,
      this.color, this.image);

}

final products = [
    Item(1, "iPhone 12 Pro", "Apple iPhone 12th generation", 999, 777,
        "#33505a", "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000")
];