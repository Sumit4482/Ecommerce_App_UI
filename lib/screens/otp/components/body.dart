import 'package:complete_ecommerce/constants.dart';
import 'package:complete_ecommerce/screens/otp/components/otp_form.dart';
import 'package:complete_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Text("OTP Verification", style: headingStyle),
            const Text("We sent your code to +91 842 126 **** "),
            buildTimer(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            const OtpForm(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            GestureDetector(
              onTap: () {
                //Resend OTP Screen
              },
              child: const Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "This code will expired in ",
        ),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 30, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, double value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
