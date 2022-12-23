import 'package:amazon_app/common/colors.dart';
import 'package:amazon_app/screens/main_page.dart';
import 'package:amazon_app/screens/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  ZoomDrawer(
      borderRadius: 24.0,
      showShadow: false,
      menuBackgroundColor: AppColor.bgDrawedNavigation,
      menuScreen: const MenuPage(), 
      mainScreen: const MainPage());
  }
}
