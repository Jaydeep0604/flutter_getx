import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/color_controller.dart';
import 'package:get/get.dart';

class ColorSliderScreen extends StatefulWidget {
  const ColorSliderScreen({super.key});

  @override
  State<ColorSliderScreen> createState() => _ColorSliderScreenState();
}

class _ColorSliderScreenState extends State<ColorSliderScreen> {
  ColorController controller = Get.put(ColorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Basic state color manage"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: controller.opacity.value,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                })
          ],
        ),
      )),
    );
  }
}
