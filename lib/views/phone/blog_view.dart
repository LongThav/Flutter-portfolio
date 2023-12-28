import 'package:flutter/material.dart';
import 'package:project/res/font.dart';

import '../../model/about_me_model.dart';
import '../../model/bloc_model.dart';
import '../../res/color.dart';

class BlocView extends StatefulWidget {
  const BlocView({super.key});

  @override
  State<BlocView> createState() => _BlocViewState();
}

class _BlocViewState extends State<BlocView> {
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
              "Blog",
              style: TextStyle(fontSize: 23, fontFamily: heebo, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: List.generate(blocModel.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                          blocModel[index]['title'],
                          style: const TextStyle(fontSize: 20, fontFamily: heebo, fontWeight: FontWeight.bold),
                        )),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            blocModel[index]['date_time'],
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
                            blocModel[index]['technology'],
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
                          blocModel[index]['decription'],
                          style: const TextStyle(fontSize: 16, fontFamily: heebo),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Source: ${blocModel[index]['link']}",
                        style: const TextStyle(fontSize: 18, fontFamily: heebo),
                      ),
                    ),
                  ],
                ),
              );
            }),
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
