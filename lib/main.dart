import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/pages/login_page.dart';
import 'package:music_app/pages/profile_page.dart';
import 'pages/dashboard_bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        //list all page here
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/dashboard', page: () => DashboardBottom()),
        GetPage(name: '/profile', page: () => ProfilePage())
      ],
    );
  }
}
