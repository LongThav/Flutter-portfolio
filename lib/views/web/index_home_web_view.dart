import 'package:flutter/material.dart';
import 'package:project/res/font.dart';
import 'package:project/views/web/web_blog_view.dart';
import 'package:project/views/web/web_work_view.dart';

import '../../main.dart';
import 'contact_web_view.dart';
import 'home_web.dart';

class IndexHomeWebView extends StatefulWidget {
  const IndexHomeWebView({super.key});

  @override
  State<IndexHomeWebView> createState() => _IndexHomeWebViewState();
}

class _IndexHomeWebViewState extends State<IndexHomeWebView> {
  final List<String> _title = [
    'Home',
    'Works',
    'Blog',
    'Contact'
  ];
  final PageController _pageController = PageController();
  int _selectIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyApp.themeNotifier.value == ThemeMode.light ? Colors.white : const Color(0XFF444444),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leadingWidth: width * 0.35,
        actions: [
          Row(
            children: List.generate(_title.length, (index) {
              return InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  setState(() {
                    _selectIndex = index;
                  });
                  _pageController.jumpToPage(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    _title[index],
                    style: TextStyle(
                      fontFamily: heebo,
                      fontWeight: FontWeight.bold,
                      color: _selectIndex == index
                          ? Colors.red
                          : Theme.of(context).brightness == Brightness.light
                              ? Colors.grey[700]
                              : Colors.white,
                    ),
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            width: width * 0.15,
          )
        ],
        leading: IconButton(
          onPressed: () {
            // Get.isDarkMode? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark());
            setState(() {
              MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
            });
          },
          icon: Icon(
            MyApp.themeNotifier.value == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
            color: Theme.of(context).brightness == Brightness.light ? Colors.grey : Colors.white,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          HomeWebView(),
          WorkWebView(),
          BlocWebViww(),
          ContactWebView(),
        ],
      ),
    );
  }
}
