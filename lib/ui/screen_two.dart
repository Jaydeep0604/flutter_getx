import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen Two"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Get.back();
            Get.offNamedUntil('/',(route) => false,);
          },
          child: Text("Go To First"),
        ),
      ),
    );
  }
}
