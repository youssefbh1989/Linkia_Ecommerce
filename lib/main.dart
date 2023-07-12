import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:linkia_ecommerce/views/splash/SpalshScreen.dart';

import 'WidgetBuinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Linkia E-commerce',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllersBinding(),
      home:  SplashScreen(),
    );
  }
}
