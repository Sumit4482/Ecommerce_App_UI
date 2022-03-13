import 'package:complete_ecommerce/screens/home/components/categories.dart';
import 'package:complete_ecommerce/screens/home/components/discount_banner.dart';
import 'package:complete_ecommerce/screens/home/components/home_header.dart';
import 'package:complete_ecommerce/screens/home/components/popular_products.dart';
import 'package:complete_ecommerce/screens/home/components/section_title.dart';
import 'package:complete_ecommerce/screens/home/components/special_offer.dart';
import 'package:complete_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(60),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(60),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenWidth(80),
            ),
            const SpecialOfferCard(),
            SizedBox(
              height: getProportionateScreenWidth(150),
            ),
            const PopularProducts(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffers(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOffers(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
