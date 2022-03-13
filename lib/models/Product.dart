// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final String title;
  late String description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DBB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4 ™",
    price: 64.99,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ...",
    rating: 4.0,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DBB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ...",
    rating: 4.3,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DBB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 36.55,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ...",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];
