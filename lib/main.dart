import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/utils/route/route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode currentMode, index) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // initialBinding: Initialize(),
          getPages: AppRoutes.appRoutes(),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
        );
      },
    );
  }
}
