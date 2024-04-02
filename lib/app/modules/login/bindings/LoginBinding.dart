import 'package:get/get.dart';
import 'package:moneymanagement/app/modules/login/controllers/LoginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
