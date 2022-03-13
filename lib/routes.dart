import 'package:complete_ecommerce/screens/cart/cart_screen.dart';
import 'package:complete_ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:complete_ecommerce/screens/details_screen.dart/details_screen.dart';
import 'package:complete_ecommerce/screens/forgot_passoword/forgot_password_screen.dart';
import 'package:complete_ecommerce/screens/home/home_screen.dart';
import 'package:complete_ecommerce/screens/login_sucess/login_sucess_screen.dart';
import 'package:complete_ecommerce/screens/otp/otp_screen.dart';
import 'package:complete_ecommerce/screens/profile/profile_screen.dart';
import 'package:complete_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:complete_ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:complete_ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSucessScreen.routeName: (context) => const LoginSucessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: ((context) => const ProfileScreen())
};
