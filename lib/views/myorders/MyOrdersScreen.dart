import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'My Orders',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            TabBar(
              indicatorColor: AppColor.primaryBlackColor,
              labelStyle: GoogleFonts.beVietnamPro(
                color: AppColor.primaryBlackColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              labelColor: AppColor.primaryBlackColor,
              unselectedLabelStyle: GoogleFonts.beVietnamPro(
                color: AppColor.primaryBlackColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              unselectedLabelColor: AppColor.primaryBlackColor.withOpacity(0.5),
              tabs: [
                Tab(
                  text: 'Ongoing ',
                ),
                Tab(
                  text: 'Completed ',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image(
                                  image: AssetImage('assets/imgs/box-tick.png'),
                                  width: 60,
                                  height: 60),
                              title: Text(
                                "Ongoing",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("July 15, 2023"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('10:00 AM'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: _buildOrderCard(
                              image:
                              NetworkImage('https://via.placeholder.com/100'),
                              status: 'Ongoing',
                              date: 'July 15, 2023',
                              time: '10:00 AM',
                              price: 'QAR 50.00',
                              productName: 'Product 1',
                              quantity: '2',
                              showReview: false,
                              buttonText: 'Track Order',
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Track Order",style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image(
                                  image: AssetImage('assets/imgs/box-tick.png'),
                                  width: 60,
                                  height: 60),
                              title: Text(
                                "Delivered",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("July 15, 2023"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('10:00 AM'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: _buildOrderCard(
                              image: NetworkImage('https://via.placeholder.com/100'),
                              status: 'Delivered',
                              date: 'July 12, 2023',
                              time: '9:45 AM',
                              price: 'QAR 35.00',
                              productName: 'Product 3',
                              quantity: '3',
                              showReview: true,
                              buttonText: 'Reorder',
                            )
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Reorder",style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard({
    NetworkImage? image,
    String? status,
    String? date,
    String? time,
    String? price,
    String? productName,
    String? quantity,
    bool? showReview,
    String? buttonText,
  }) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image(image: image!, width: 100, height: 120),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Price: $price'),
                  Text('Quantity: $quantity'),
                ],
              ),


            ],
          ),
        ),
      ],
    );
  }
}
