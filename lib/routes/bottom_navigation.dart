import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spine/contoller/bottom_navigation/bottom_navigation_controller.dart';
import 'package:spine/view/home_page/home_page.dart'; // Import GetX


class CustomBottomNavigationBar extends StatelessWidget {
   const CustomBottomNavigationBar({super.key});

  final List<Widget> _pages = const [
   HomePage(), HomePage(), HomePage(), HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    
    final BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      extendBody: true,
      body: Obx(() {
        
        return _pages[controller.currentIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return CrystalNavigationBar(
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Color.fromARGB(255, 165, 165, 164),
          backgroundColor: Colors.grey.shade800,
          onTap: (index) {
            controller.changeIndex(index); 
          },
          items: [
            CrystalNavigationBarItem(
                icon: EneftyIcons.home_bold,
                unselectedIcon: EneftyIcons.home_outline),
            CrystalNavigationBarItem(
                icon: EneftyIcons.cup_bold,
                unselectedIcon: EneftyIcons.cup_bold),
            CrystalNavigationBarItem(
                icon: EneftyIcons.shopping_bag_bold,
                unselectedIcon: EneftyIcons.shopping_bag_bold),
            CrystalNavigationBarItem(
              icon: EneftyIcons.profile_outline, 
              unselectedIcon: EneftyIcons.profile_bold,
            ),
          ],
        );
      }),
    );
  }
}
