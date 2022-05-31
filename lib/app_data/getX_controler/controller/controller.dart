import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt number = 0.obs;

  increment() => number.value++;
  decrement() {
    number.value--;
  }
}
