import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/notification_controller.dart';
import 'package:flutter_getx/ui/basic_state_screen.dart';
import 'package:flutter_getx/ui/color_slider_screen.dart';
import 'package:flutter_getx/ui/image_pick_screen.dart';
import 'package:flutter_getx/ui/list_like_screen.dart';
import 'package:flutter_getx/ui/login_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
// i have an issue with salary slip,when can i talk to to you about this.
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool utilitysOpen = false;
  bool notification = false;
  bool listOpen = false;

  NotificationController controller = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text("Utility"),
                    onTap: () {
                      setState(() {
                        utilitysOpen = !utilitysOpen;
                      });
                    },
                    trailing: Transform.scale(
                      scale: 1,
                      child: utilitysOpen
                          ? Icon(Icons.keyboard_arrow_up)
                          : Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ),
                if (utilitysOpen)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("GetX Bottom sheet"),
                            trailing: Icon(Icons.touch_app_outlined),
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  // height: MediaQuery,
                                  decoration: BoxDecoration(
                                      color: Colors.green[300],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text("Light"),
                                        leading: Icon(Icons.light_mode),
                                        onTap: () {
                                          Get.back();
                                          Get.changeTheme(ThemeData.light());
                                        },
                                      ),
                                      ListTile(
                                        title: Text("Dark"),
                                        leading: Icon(Icons.dark_mode),
                                        onTap: () {
                                          Get.back();
                                          Get.changeTheme(ThemeData.dark());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("goto next screen"),
                            trailing: Icon(Icons.touch_app_outlined),
                            onTap: () {
                              // Get.to(ScreenOne());
                              Get.toNamed('/screenOne', arguments: [
                                'Jk',
                                'Jaydeep',
                                'Jaydeep K',
                              ]);
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("MediaQuery"),
                            trailing: Icon(Icons.touch_app_outlined),
                            onTap: () {
                              Get.toNamed("/mediaquery");
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("SnackBar"),
                            trailing: Icon(Icons.touch_app_outlined),
                            onTap: () {
                              Get.snackbar(
                                "Hello jk", "this is first getx demo",
                                backgroundColor: Colors.green[300],
                                borderRadius: 10,
                                duration: Duration(seconds: 2),
                                colorText: Colors.black,
                                padding: EdgeInsets.all(10),
                                icon: Icon(Icons.check),
                                // messageText: Column(
                                //   children: [
                                //     Text(
                                //       "hello test",
                                //     ),
                                //   ],
                                // ),
                                snackStyle: SnackStyle.FLOATING,
                                forwardAnimationCurve: Curves.decelerate,
                                // leftBarIndicatorColor: Colors.red
                                // userInputForm: Form(
                                //   child: Column(
                                //     mainAxisSize: MainAxisSize.min,
                                //     children: [
                                //       TextFormField(
                                //         decoration: InputDecoration(hintText: "hello text"),
                                //       )
                                //     ],
                                //   ),
                                // ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                Card(
                  child: ListTile(
                      title: Text("Basic state count manage"),
                      onTap: () {
                        Get.to(BasicStateScreen());
                      },
                      trailing: Icon(Icons.touch_app)),
                ),
                Card(
                  child: ListTile(
                      title: Text("Basic state color manage"),
                      onTap: () {
                        Get.to(ColorSliderScreen());
                      },
                      trailing: Icon(Icons.touch_app)),
                ),
                Card(
                  child: ListTile(
                    title: Text("notification switch"),
                    onTap: () {
                      Get.to(ColorSliderScreen());
                    },
                    trailing: Obx(
                      () => Switch(
                        value: controller.notification.value,
                        onChanged: (value) {
                          controller.notificatonStateChnage(value);
                        },
                      ),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Lists"),
                    onTap: () {
                      Get.to(ListLikeScreen());
                    },
                    trailing: Transform.scale(
                      scale: 1,
                      child: Icon(Icons.touch_app),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Pick Image"),
                    onTap: () {
                      Get.to(ImagePickScreen());
                    },
                    trailing: Transform.scale(
                      scale: 1,
                      child: Icon(Icons.touch_app),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Login Using Getx"),
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                    trailing: Transform.scale(
                      scale: 1,
                      child: Icon(Icons.touch_app),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
