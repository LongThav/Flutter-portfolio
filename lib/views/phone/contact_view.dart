import 'package:flutter/material.dart';
import 'package:project/res/color.dart';

import '../../model/contact_model.dart';
import '../../res/font.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  int? _selectIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Contact",
                style: TextStyle(fontSize: 23, fontFamily: heebo, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: List.generate(contactModel.length, (index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      _selectIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: txtColor),
                      color: _selectIndex == index ? Colors.blue[200] : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(contactModel[index]['img']),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            contactModel[index]['title'],
                            style: TextStyle(fontSize: 18, color: Theme.of(context).brightness == Brightness.light ? txtColor : Colors.white, fontFamily: heebo, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
