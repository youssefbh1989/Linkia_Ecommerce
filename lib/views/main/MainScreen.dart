import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/Home/HomeScreen.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/brand/BranScreen.dart';
import 'package:linkia_ecommerce/views/category/CategoryScreen.dart';
import 'package:linkia_ecommerce/views/profile/ProfileScreen.dart';

class MainScreen extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    BagScreen(),
    BrandScreen(),
    ProfileScreen(),
  ];

  final List<String> pageTitles = [
    'Home',
    'Category',
    'Bag',
    'Brand',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => pages[controller.currentIndex.value],
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (_) => BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changePage(index);
            print(pages[controller.currentIndex.value]);
            print(controller.currentIndex.value);
          },
          type: BottomNavigationBarType.fixed, // Set type to fixed
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/HouseSimple.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 0 ? Colors.black : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/SquaresFour.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 1 ? Colors.black : Colors.grey,
              ),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/Tote.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 2 ? Colors.black : Colors.grey,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/sticker.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 3 ? Colors.black : Colors.grey,
              ),
              label: 'Brand',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/Smiley.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 4 ? Colors.black : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}


