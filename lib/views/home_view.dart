import 'package:flutter/material.dart';
import 'package:project/res/responsive.dart';
import 'package:project/views/phone/phone_view.dart';
import 'package:project/views/web/index_home_web_view.dart';

import '../main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraint) {
      if (constraint.maxWidth <= widthphoneI || constraint.maxWidth <= widthPhoneII) {
        return const PhoneView();
      } else if (constraint.maxWidth <= widthTabletI || constraint.maxWidth <= widthTabletII) {
        return Container(
          width: width,
          color: MyApp.themeNotifier.value == ThemeMode.light ? Colors.white : const Color(0XFF444444),
          child: const IndexHomeWebView(),
        );
      } else {
        return Container(
          width: width,
          color: MyApp.themeNotifier.value == ThemeMode.light ? Colors.white : const Color(0XFF444444),
          child: const IndexHomeWebView(),
        );
      }
    });
  }
}
