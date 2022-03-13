import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const Spacer(),
              Text(
                "TOKOTO",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(65),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              Image.asset(
                image,
                height: getProportionateScreenHeight(280),
                width: getProportionateScreenWidth(450),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
