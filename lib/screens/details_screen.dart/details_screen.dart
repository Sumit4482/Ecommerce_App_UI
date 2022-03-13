import 'package:complete_ecommerce/models/Product.dart';
import 'package:complete_ecommerce/screens/details_screen.dart/Components/body.dart';
import 'package:complete_ecommerce/screens/details_screen.dart/Components/custom_appBar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument argument =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(argument.product.rating),
      body: Body(
        product: argument.product,
      ),
    );
  }
}

class ProductDetailsArgument {
  final Product product;
  ProductDetailsArgument({required this.product});
}
