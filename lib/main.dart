import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jin_jin/screens/auth/auth.dart';
import 'package:jin_jin/ui/utilities/theme_data.dart';

import 'ui/utilities/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      title: 'New New France24',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              color: Colors.transparent,
              titleTextStyle: TextStyle(
                  color: textColor
              ),
              iconTheme: IconThemeData(
                  color: textColor
              ),
              elevation: 0
          )
      ),
      home: Authentication(),
      initialRoute: GetRoutes.auth,
      getPages: GetRoutes.routes,
    );
  }
}

class InitialBinding implements Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthenticationController(), fenix: true);
  }
}
