import 'package:complete_ecommerce/constants.dart';
import 'package:complete_ecommerce/screens/sign_up/components/sign_up_form.dart';
import 'package:complete_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Register Account",
              style: headingStyle,
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            const SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            const Text(
              "By Continuing your confirm that you are \nwith our Terms and Conditions",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
