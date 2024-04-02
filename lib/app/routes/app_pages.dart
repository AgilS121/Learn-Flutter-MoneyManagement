import 'package:get/get.dart';
import 'package:moneymanagement/app/modules/home/bindings/HomeBinding.dart';
import 'package:moneymanagement/app/modules/home/view/HomeView.dart';
import 'package:moneymanagement/app/modules/introductions/bindings/IntroductionsBinding.dart';
import 'package:moneymanagement/app/modules/introductions/view/IntroductionsView.dart';
import 'package:moneymanagement/app/modules/login/bindings/LoginBinding.dart';
import 'package:moneymanagement/app/modules/login/view/LoginView.dart';
import 'package:moneymanagement/app/utils/Container.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionsView(),
      binding: IntroductionsBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CONTAINER,
      page: () => ContainerCs(),
    ),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => ProfileView(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CHAT_ROOM,
    //   page: () => ChatRoomView(),
    //   binding: ChatRoomBinding(),
    // ),
    // GetPage(
    //   name: _Paths.SEARCH,
    //   page: () => SearchView(),
    //   binding: SearchBinding(),
    // ),
    // GetPage(
    //   name: _Paths.UPDATE_STATUS,
    //   page: () => UpdateStatusView(),
    //   binding: UpdateStatusBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CHANGE_PROFILE,
    //   page: () => ChangeProfileView(),
    //   binding: ChangeProfileBinding(),
    // ),
  ];
}
