import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/controllers/fs_controllers.dart';
import 'package:pets/view/firstscreen.dart';
import 'package:pets/view/seccondscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => FirstScreen()),
        GetPage(
            name: '/secondscreen',
            page: () => SecondScreen()),
      ],
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<FirstScreenController>(() => FirstScreenController());
      }),
    );
  }
}