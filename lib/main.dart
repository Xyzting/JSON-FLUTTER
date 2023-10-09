import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:october_9_23/containers/jsonPage/page_one.dart';
import 'package:october_9_23/containers/jsonPage/page_three/detail_page.dart';
import 'package:october_9_23/containers/jsonPage/page_three/page_three.dart';
import 'package:october_9_23/containers/jsonPage/page_two.dart';
import 'containers/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/page-one", page: () => const PageOne()),
        GetPage(name: "/page-two", page: () => const PageTwo()),
        GetPage(name: "/page-three", page: () => const PageThree()),
        GetPage(name: "/detail-page-three/:id", page: () => const DetailPageThree()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage()
    );
  }
}