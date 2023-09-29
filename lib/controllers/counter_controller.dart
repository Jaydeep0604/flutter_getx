import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 1.obs;
  incrementCount() {
    count.value++;
    print(count);
  }
}
