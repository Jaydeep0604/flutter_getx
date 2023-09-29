import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notification = false.obs;

  notificatonStateChnage(bool value) {
    notification.value = value;
  }
}
