import 'package:get/get.dart';

class LikeController extends GetxController {
  RxList<String> lists = [
    'Test A',
    'Test B',
    'Test c',
    'Test 4',
  ].obs;
  RxList tempList = [].obs;

  addLike(String value) {
    tempList.add(value);
  }

  removeLike(String value) {
    tempList.remove(value);
  }
}
