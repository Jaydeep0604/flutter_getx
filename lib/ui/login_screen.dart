import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: controller.emailController.value,
                    decoration: InputDecoration(
                      hintText: "Email",
                      disabledBorder: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.passwordController.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      disabledBorder: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => controller.isLoading.value
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                controller.loginApi();
                              }
                            },
                            child: Text("Login"),
                          ),
                  ),
                  Text("email : eve.holt@reqres.in \npassword : cityslicka"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
