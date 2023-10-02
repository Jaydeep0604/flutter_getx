import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/image_picker_controller.dart';
import 'package:get/get.dart';

class ImagePickScreen extends StatefulWidget {
  const ImagePickScreen({super.key});

  @override
  State<ImagePickScreen> createState() => _ImagePickScreenState();
}

class _ImagePickScreenState extends State<ImagePickScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Image Picker"),
      ),
      body: SafeArea(
        child: Obx(
          () => Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(
                          File(
                            controller.imagePath.toString(),
                          ),
                        )
                      : null,child: Icon(Icons.select_all),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: Text(
                    "Select Image",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
