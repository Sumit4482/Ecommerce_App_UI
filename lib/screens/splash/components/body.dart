import 'package:complete_ecommerce/constants.dart';
import 'package:complete_ecommerce/components/default_button.dart';
import 'package:complete_ecommerce/screens/splash/components/splash_content.dart';
import 'package:complete_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:complete_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's Shop !",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people with store \n arround India",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "WWe show the easy way to shop, \n Just stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashScreenContent(
                    image: splashData[index]["image"] as String,
                    text: splashData[index]["text"] as String,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        debugPrint("Button Pressed.");
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
