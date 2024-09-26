import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Reactive variable to store the current index of the navigation bar
  var currentIndex = 0.obs;

  // Method to change the current index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
