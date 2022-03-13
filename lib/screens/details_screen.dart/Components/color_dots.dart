import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          Row(
            children: [
              ...List.generate(
                product.colors.length,
                (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(350),
              ),
              RoundedIconBtn(iconData: Icons.remove, press: () {}),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              RoundedIconBtn(iconData: Icons.add, press: () {})
            ],
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(4),
      height: getProportionateScreenWidth(60),
      width: getProportionateScreenWidth(60),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
