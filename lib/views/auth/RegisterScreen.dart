import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';

import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New to the black studio',
                    style: GoogleFonts.tenorSans(
                        fontSize: 26, fontWeight: FontWeight.w400)),
                Image.asset(
                  'assets/imgs/divider.png',
                  width: 150,
                  height: 50,
                  color: AppColor.primaryBlackColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Register to speed up the checout process and manage your orders',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 12,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 12,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 12,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show Password',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Set your desired corner radius
                      ),
                    ),
                    onPressed: () {
                      Get.to(()=>MainScreen());
                    },
                    child: Text('Sign up',
                        style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryWhiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(height: 10),
                Text('Or',
                    style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Set button color to white
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: AppColor
                                    .primaryGreyColor), // Set border color to grey
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.facebook, color: Colors.blue),
                            const SizedBox(width: 8),
                            Text(
                              'Continue with Facebook',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Set button color to white
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: AppColor
                                    .primaryGreyColor), // Set border color to grey
                          ),
                        ),
                        onPressed: () {
                          // Implement the continue with Google functionality here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.email, color: Colors.red),
                            const SizedBox(width: 8),
                            Text(
                              'Continue with Google',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Set button color to white
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: AppColor
                                    .primaryGreyColor), // Set border color to grey
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.apple,
                                color: AppColor.primaryBlackColor),
                            const SizedBox(width: 8),
                            Text(
                              'Continue with Apple',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                  Get.to(()=>LoginScreen());
                  },
                  child: Text('Login Existing Account ?',
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
