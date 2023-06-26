import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_2/routes/index.dart';
import 'pages/home/home_binding.dart';
import 'pages/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX",
      defaultTransition: Transition.rightToLeft,
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
      home: const HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}
