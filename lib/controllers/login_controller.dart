import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;

  void loginApi() async {
    try {
      isLoading.value = true;
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar("Login successfull", 'Congratiulation');
      } else {
        isLoading.value = false;
        Get.snackbar("Login failed", data['error']);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}
