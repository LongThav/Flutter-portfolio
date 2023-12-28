import 'package:flutter/material.dart';

import '../../res/color.dart';
import '../../res/font.dart';

class PhoneHomeView extends StatefulWidget {
  const PhoneHomeView({super.key});

  @override
  State<PhoneHomeView> createState() => _PhoneHomeViewState();
}

class _PhoneHomeViewState extends State<PhoneHomeView> {
  final List<dynamic> _data = [
    {
      'title': 'School Management',
      'date_time': '01 September 2023',
      'technology': 'Flutter Laravel',
      'decription': 'School Management I was develop using Flutter as frontend and Laravel as Backend. Haven Admin Panel and Mobile App.',
      'link': 'https://github.com/LongThav/school-managment',
      'featured': '',
    },
    {
      'title': 'PBL',
      'date_time': '20 November  2022 -> July 2022',
      'technology': 'Flutter',
      'decription': 'I was do as a part of my work in this Project.',
      'link': 'Secret!',
      'featured': '',
    },
  ];

  final List<dynamic> _featurWork = [
    {
      'title': 'School Management',
      'date_time': '01 September 2023',
      'img': 'assets/imgs/work1.png',
      'decription': 'School Management I was develop using Flutter as frontend and Laravel as Backend. Haven Admin Panel and Mobile App.',
      'file_describe': '',
    },
  ];

  final List<dynamic> _aboutMe = [
    {
      'link': '',
      'img': 'assets/imgs/fb.png',
    },
    {
      'link': '',
      'img': 'assets/imgs/insta.png',
    },
    {
      'link': '',
      'img': 'assets/imgs/Group.png',
    },
    {
      'link': '',
      'img': 'assets/imgs/Linkedin.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(0),
                width: 130,
                height: 130,
                decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/imgs/profile.jpg"), fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              child: Text(
                "Hi, I'm LongThav SiPav.",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'heebo',
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "I'm Flutter Developer.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'heebo', letterSpacing: 1),
              ),
            ),
            const Align(
              child: Text(
                "My Skill:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'heebo', letterSpacing: 1),
              ),
            ),
            const Align(
              child: Text(
                "Flutter&Dart, Php, Laravel, Html, CSS, JS, Java",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'heebo', letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              " My name is LongThav SiPav. I am 21 years old. I’m studying at Norton University, Computer Science Year III. I haven experience of Mobile app. I would response of my work or my team, respect of time, try research new information, self- motivated, and hard-working, especially I really love this skill. Eventual career goal to become full stack developer for innovation of technology in my country.",
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1,
                fontFamily: heebo,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0XFFff6464),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Download My Resume",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: heebo),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light ? const Color(0XFFEDF7FA) : const Color(0XFF444444),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Recent posts",
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: heebo,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(_data.length, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        padding: const EdgeInsets.all(15),
                        width: width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).brightness == Brightness.light ? Colors.white : const Color(0XFF878683),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  _data[index]['title'],
                                  style: const TextStyle(fontSize: 20, fontFamily: heebo, fontWeight: FontWeight.bold),
                                )),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    _data[index]['date_time'],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: heebo,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  height: 15,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Flexible(
                                  child: Text(
                                    _data[index]['technology'],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: heebo,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  _data[index]['decription'],
                                  style: const TextStyle(fontSize: 16, fontFamily: heebo),
                                )),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Source: ${_data[index]['link']}",
                                style: const TextStyle(fontSize: 18, fontFamily: heebo),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    padding: const EdgeInsets.all(15),
                    width: width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light ? Colors.white : const Color(0XFF878683),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Note: Other Project you can check my repositories",
                              style: TextStyle(fontSize: 18, fontFamily: heebo),
                            )),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Link: https://github.com/LongThav?tab=repositories",
                            style: TextStyle(fontSize: 18, fontFamily: heebo),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Featured works",
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: heebo,
                  color: Theme.of(context).brightness == Brightness.light ? txtColor : Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: List.generate(_featurWork.length, (index) {
                return Container(
                  //  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  padding: const EdgeInsets.all(15),
                  width: width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light ? Colors.white : const Color(0XFF878683),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        height: 170,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage(_featurWork[index]['img']), fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _featurWork[index]['title'],
                          style: TextStyle(
                            fontSize: 23,
                            color: Theme.of(context).brightness == Brightness.light ? txtColor : Colors.white,
                            fontFamily: heebo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(color: txtColor, borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            _featurWork[index]['date_time'],
                            style: const TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        _featurWork[index]['decription'],
                        style: const TextStyle(fontSize: 18, fontFamily: heebo),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: width,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(_aboutMe.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(_aboutMe[index]['img']),
                );
              }),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Copyright ©2020 All rights reserved ',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: heebo,
                  color: Theme.of(context).brightness == Brightness.light ? txtColor : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
