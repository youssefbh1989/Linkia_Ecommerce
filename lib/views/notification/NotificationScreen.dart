import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/notification/FeedsScreen.dart';
import 'package:linkia_ecommerce/views/notification/OfferScreen.dart';

import 'ActivityScreen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Notification',style: GoogleFonts.beVietnamPro(
          color: AppColor.primaryBlackColor,
          fontWeight: FontWeight.w600,
          fontSize: 20
        ),),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading:  GestureDetector(
          onTap: (){
            Get.back();
          },
            child:const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,)),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Image.asset('assets/imgs/Tag.png'),
                  title: Text('Offer',style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                  )),
                  onTap: (){
                    Get.to(()=>OfferScreen());
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/imgs/Feed.png'),
                  title: Text('Feeds',style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                  ),),
                  onTap: (){
                    Get.to(()=>FeedScreen());
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/imgs/Bell.png'),
                  title: Text('Acivity',style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                  )),
                  onTap: (){
                    Get.to(()=>ActivityScreen());
                  },
                )
              ],
            )


          ],
        ),
      ) ,
    );
  }
}
