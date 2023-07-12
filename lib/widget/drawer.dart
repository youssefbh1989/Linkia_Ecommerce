import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/privacy/PrivacyScreen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.primaryGreyColor,
                      width: .2,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12,
                    foregroundColor: Colors.black,
                    child: Icon(
                      Icons.close,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/imgs/bag-happy.png'),
              title: Text('New Arrivals'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/Tag.png'),
              title: Text('Best Sellers'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/category-2.png'),
              title: Text('Brands'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/receipt-2.png'),
              title: Text('Sale'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/Heart.png'),
              title: Text('Favourite'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/Bell.png'),
              title: Text('Notification'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/bag-tick.png'),
              title: Text('My Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/Gear.png'),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/CircleWavyQuestion.png'),
              title: Text('FAQs'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/Headset.png'),
              title: Text('Help and Support'),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/imgs/privacy.png'),
              title: Text('Privacy Policy'),
              onTap: () {
                Get.back();
                Get.to(() => PrivacyScreen());
              },
            ),

            ListTile(
              leading: Image.asset('assets/imgs/UploadSimple.png'),
              title: Text('Logout'),
              onTap: () {
              },
            ),
            // Add more list tiles here
          ],
        ),
      ),
    );
  }
}
