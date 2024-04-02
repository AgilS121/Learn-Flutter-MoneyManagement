import 'package:get/get.dart';
import 'package:moneymanagement/app/modules/introductions/controllers/IntroductionsController.dart';

class IntroductionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionsController>(
      () => IntroductionsController(),
    );
  }
}
