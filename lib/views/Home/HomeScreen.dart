import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/search/SearchScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: IconButton(
          icon:  Image.asset('assets/imgs/List.png',color: AppColor.primaryBlackColor,),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        automaticallyImplyLeading: false,
        title:  Text('Linkia',style: GoogleFonts.beVietnamPro(
          color: AppColor.primaryBlackColor,
          fontWeight: FontWeight.w600
        ),),
        actions: [
          IconButton(
            icon:  Image.asset('assets/imgs/Heart.png',
              color: AppColor.primaryBlackColor),
            onPressed: () {
              // Handle favorite button press
            },
          ),
          IconButton(
            icon: Image.asset('assets/imgs/Bell.png',color: AppColor.primaryBlackColor,),
            onPressed: () {
             Get.to(()=>const NotificationScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: AppColor.primaryBlackColor,
                decoration: InputDecoration(
                  hintText: 'What can we help you find ?',
                  filled: true,
                  fillColor: AppColor.secondaryGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onTap: (){
                  Get.to(()=>SearchScreen());

                },
              ),
            ),
            // Add other widgets here
          ],
        ),
      ),
    );
  }
}
