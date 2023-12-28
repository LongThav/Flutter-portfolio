import 'package:flutter/material.dart';

import '../../model/about_me_model.dart';
import '../../model/work_model.dart';
import '../../res/color.dart';
import '../../res/font.dart';

class WorkView extends StatefulWidget {
  const WorkView({super.key});

  @override
  State<WorkView> createState() => _WorkViewState();
}

class _WorkViewState extends State<WorkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Work",
              style: TextStyle(fontSize: 23, fontFamily: heebo, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: List.generate(featurWork.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage(featurWork[index]['img']), fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        featurWork[index]['title'],
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
                          featurWork[index]['date_time'],
                          style: const TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      featurWork[index]['decription'],
                      style: const TextStyle(fontSize: 18, fontFamily: heebo),
                    ),
                  ],
                ),
              );
            }),
          ),
          const SizedBox(height: 15,),
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
            children: List.generate(aboutMe.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(aboutMe[index]['img']),
              );
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
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
            ),
          )
        ],
      ),
    );
  }
}
