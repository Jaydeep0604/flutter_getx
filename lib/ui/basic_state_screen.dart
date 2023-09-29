import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class BasicStateScreen extends StatefulWidget {
  const BasicStateScreen({super.key});

  @override
  State<BasicStateScreen> createState() => _BasicStateScreenState();
}

class _BasicStateScreenState extends State<BasicStateScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Basic state conter manage",
        ),
      ),
      body: Center(
        child: Obx(() {
          return Text(controller.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCount();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
