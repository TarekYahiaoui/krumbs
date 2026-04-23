import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krumbs/constants/app_colors.dart';
import 'package:krumbs/views/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KRUMBS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.dark(
          surface: AppColors.surface,
          primary: AppColors.primary,
        ),
      ),
      home: MainView(),
    );
  }
}
