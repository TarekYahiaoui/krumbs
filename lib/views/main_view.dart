import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krumbs/controllers/screen_controller.dart';
import 'package:krumbs/views/home_view.dart';
import 'package:krumbs/views/premium_view.dart';
import 'package:krumbs/views/search_view.dart';
import 'package:krumbs/widgets/custom_nav_bar.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final List<Widget> _views = [HomeView(), SearchView(), PremiumView()];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScreenController());

    return Scaffold(
      body: Obx(() => _views[controller.currentIndex.value]),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
