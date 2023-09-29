import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaQueryScreen extends StatefulWidget {
  const MediaQueryScreen({super.key});

  @override
  State<MediaQueryScreen> createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenSize.height * .3,
              width: screenSize.width * .8,
              color: Colors.redAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * .4,
                  width: Get.width * .5,
                  color: Colors.greenAccent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * .2,
                      width: Get.width * .3,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      height: Get.height * .1,
                      width: Get.width * .3,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: Get.height * .05,
                      width: Get.width * .3,
                      color: Colors.green,
                    ),
                    Container(
                      height: Get.height * .05,
                      width: Get.width * .3,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
                Container(
                  height: Get.height * .4,
                  width: Get.width * .2,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
