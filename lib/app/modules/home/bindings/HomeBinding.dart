import 'package:get/get.dart';
import 'package:moneymanagement/app/modules/home/controllers/HomeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
