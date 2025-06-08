import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_app/app/bindings/main_binding.dart';
import 'package:simple_app/app/routes/app_pages.dart';
import 'package:simple_app/app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      initialBinding: MainBinding(),
      getPages: AppPages.routes,
    );
  }
}
