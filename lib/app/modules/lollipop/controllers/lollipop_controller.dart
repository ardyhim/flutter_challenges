import 'package:get/get.dart';

class LollipopController extends GetxController {
  //TODO: Implement LollipopController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
