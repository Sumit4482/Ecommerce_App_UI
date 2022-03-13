import 'package:complete_ecommerce/constants.dart';
import 'package:complete_ecommerce/screens/complete_profile/components/complete_profile_form.dart';
import 'package:complete_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.01),
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            const Text("Complete your details or continue \nwith social media",
                textAlign: TextAlign.center),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            const CompleteProfileFrom(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const Text(
              "By continuing your confirm that you agree \nwith our Terms and Conditions",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
