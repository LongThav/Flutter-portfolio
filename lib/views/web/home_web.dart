import 'package:flutter/material.dart';
import 'package:project/res/font.dart';

class HomeWebView extends StatefulWidget {
  const HomeWebView({super.key});

  @override
  State<HomeWebView> createState() => _HomeWebViewState();
}

class _HomeWebViewState extends State<HomeWebView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: width * 0.165),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, I am LongThav SiPav",
                        style: TextStyle(fontSize: 30, fontFamily: heebo, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "I'm Flutter Developer",
                        style: TextStyle(fontSize: 25, fontFamily: heebo, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "My Skill: Flutter&Dart, Php, Laravel, Html, CSS, JS, Java",
                        style: TextStyle(fontSize: 18, fontFamily: heebo, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                      ),
                      const SizedBox(
                        height: 10,
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
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Download Resume",
                            style: TextStyle(
                              fontFamily: heebo,
                              fontSize: 18,
                              color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    margin: EdgeInsets.only(bottom: height * 0.2),
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, 
                      image: DecorationImage(
                        image: AssetImage('assets/imgs/profile.jpg'), fit: BoxFit.fill)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
