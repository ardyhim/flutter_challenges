import 'package:get/get.dart';

import '../controllers/lollipop_controller.dart';

class LollipopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LollipopController>(
      () => LollipopController(),
    );
  }
}
