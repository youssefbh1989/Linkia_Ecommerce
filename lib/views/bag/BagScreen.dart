import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({Key? key}) : super(key: key);

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> products = [
    'Product 1',
    'Product 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/imgs/List.png',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text(
          'Bag',
          style: GoogleFonts.beVietnamPro(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CartItem(
                    productName: products[index],
                    price: 19.99,
                    category: 'Electronics',
                    imageUrl: 'https://via.placeholder.com/100',
                    onPlusPressed: () {
                      // TODO: Implement the logic for increasing the quantity
                    },
                    onMinusPressed: () {
                      // TODO: Implement the logic for decreasing the quantity
                    },
                    onRemovePressed: () {
                      // TODO: Implement the logic for removing the product
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.primaryGreyColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(

                            border: InputBorder.none,
                            labelText: 'Promo Code',
                            labelStyle:  GoogleFonts.beVietnamPro(
                              color: AppColor.primaryGreyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12

                          ),
                            suffixIcon: TextButton(
                              onPressed: () {
                                // TODO: Implement the logic for applying the promo code
                              },
                              child:  Text('Apply',style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14

                              ),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(),
                ],
              ),


              const SizedBox(height: 16),
              // TODO: Implement the price details section

              const SizedBox(height: 16),
               Text(
                'Total Amount',
                  style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400

                  )
              ),
              // TODO: Implement the total amount section

              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement the logic for the checkout button
                  },
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryWhiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  final double price;
  final String category;
  final String imageUrl;
  final VoidCallback? onPlusPressed;
  final VoidCallback? onMinusPressed;
  final VoidCallback? onRemovePressed;

  const CartItem({super.key,
    required this.productName,
    required this.price,
    required this.category,
    required this.imageUrl,
    this.onPlusPressed,
    this.onMinusPressed,
    this.onRemovePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Image.network(
              imageUrl,
              width: 150,
              height: 180,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: onMinusPressed,
                    icon: const Icon(Icons.remove, size: 15),
                  ),


                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '1', // Replace with the actual quantity
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w600

                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: onPlusPressed,
                    icon: const Icon(Icons.add, size: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: GoogleFonts.beVietnamPro(
              color: AppColor.primaryGreyColor,
              fontWeight: FontWeight.w600

          ),
              ),
              const SizedBox(height: 8),
              Text(
                category,
                  style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w600

                  )
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'QAR ${price.toStringAsFixed(2)}',
                    style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600

                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: onRemovePressed,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child:  Text(
                      'Remove',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w600

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

