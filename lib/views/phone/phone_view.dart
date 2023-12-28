import 'package:flutter/material.dart';
import 'package:project/res/color.dart';
import 'package:project/views/phone/blog_view.dart';
import 'package:project/views/phone/contact_view.dart';
import 'package:project/views/phone/work_view.dart';

import '../../main.dart';
import 'home_phone_view.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({super.key});

  @override
  State<PhoneView> createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  final PageController _pageController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _title = [
    'Home',
    'Works',
    'Blog',
    'Contact'
  ];
  int _selectIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
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
        backgroundColor: MyApp.themeNotifier.value == ThemeMode.light ? Colors.white : const Color(0XFF444444),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                  //close drawer, if drawer is open
                } else {
                  scaffoldKey.currentState!.openEndDrawer();
                  //open drawer, if drawer is closed
                }
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ))
        ],
      ),
      endDrawer: Drawer(
        width: width * 0.35,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:  Icon(
                      Icons.clear,
                      color: Theme.of(context).brightness == Brightness.light ? txtColor : Colors.white,
                      size: 30,
                    )),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ListView.builder(
                  itemCount: _title.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        setState(() {
                          _selectIndex = index;
                        });
                        _pageController.jumpToPage(index);
                      },
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          child: Text(
                            _title[index],
                            style: TextStyle(fontSize: 18, color: _selectIndex == index ? Colors.red : null),
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          SizedBox(
            child: PhoneHomeView(),
          ),
          SizedBox(
            child: WorkView(),
          ),
          SizedBox(
            child: BlocView(),
          ),
          SizedBox(
            child: ContactView(),
          ),
        ],
      ),
    );
  }
}
