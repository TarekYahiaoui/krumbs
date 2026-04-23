import 'package:get/state_manager.dart';

class ScreenController extends GetxController {
  final currentIndex = 0.obs;

  void changePage(int index) => currentIndex.value = index;
}
