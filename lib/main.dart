import 'package:flutter/material.dart';
import 'package:flutter_getx/ui/home_screen.dart';
import 'package:flutter_getx/ui/mediaquery_screen.dart';
import 'package:flutter_getx/ui/screen_one.dart';
import 'package:flutter_getx/ui/screen_two.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
        GetPage(name: '/mediaquery', page: () => MediaQueryScreen()),
      ],
    );
  }
}
