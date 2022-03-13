import 'package:complete_ecommerce/screens/login_sucess/body.dart';
import 'package:flutter/material.dart';

class LoginSucessScreen extends StatelessWidget {
  static String routeName = "/login_sucess";
  const LoginSucessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: const Body(),
    );
  }
}
