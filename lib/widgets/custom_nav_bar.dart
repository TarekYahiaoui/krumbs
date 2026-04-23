import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krumbs/constants/app_colors.dart';
import 'package:krumbs/controllers/screen_controller.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ScreenController>();

    return SizedBox(
      height: 90,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(
              color: AppColors.navBar,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _navItem(
                    icon: Icons.home_rounded,
                    label: 'Home',
                    index: 0,
                    controller: controller,
                  ),
                  _navItem(
                    icon: Icons.search_rounded,
                    label: 'Search',
                    index: 1,
                    controller: controller,
                  ),
                  _navItem(
                    icon: Icons.workspace_premium_rounded,
                    label: 'Premium',
                    index: 2,
                    controller: controller,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required String label,
    required int index,
    required ScreenController controller,
  }) {
    final isActive = controller.currentIndex.value == index;

    return GestureDetector(
      onTap: () => controller.changePage(index),

      child: SizedBox(
        width: 90,
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 8),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: isActive ? AppColors.primary : AppColors.textMuted,
                ),
              ),
            ),
            Positioned(
              top: -30,
              child: Container(
                // duration: const Duration(milliseconds: 200),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white, size: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
