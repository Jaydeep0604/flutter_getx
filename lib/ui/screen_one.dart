import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key,this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen One "+Get.arguments[1]),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Get.to(ScreenTwo());
            Get.toNamed('/screenTwo');
          },
          child: Text("Go Next"),
        ),
      ),
    );
  }
}
