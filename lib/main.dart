import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moneymanagement/app/controllers/auth_controller.dart';
import 'package:moneymanagement/app/routes/app_pages.dart';
import 'package:moneymanagement/app/utils/SplashScreen.dart';
import 'package:moneymanagement/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).catchError((error) {
    print('Error initializing Firebase: $error');
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(
            () => GetMaterialApp(
              title: "ChatApp",
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: authC.isSkipIntro.isTrue
                  ? authC.isAuth.isTrue
                      ? Routes.HOME
                      : Routes.LOGIN
                  : Routes.CONTAINER,
              getPages: AppPages.routes,
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
