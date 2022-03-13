import 'package:complete_ecommerce/components/custom_bottom_navbar.dart';
import 'package:complete_ecommerce/enums.dart';
import 'package:complete_ecommerce/screens/home/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
