// ignore_for_file: file_names

import 'package:complete_ecommerce/models/Product.dart';

class Cart {
  late final Product product;
  late final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

List<Cart> demoCart = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[2], numOfItems: 1),
];
