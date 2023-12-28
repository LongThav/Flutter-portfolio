import 'package:flutter/material.dart';

class BlocWebViww extends StatefulWidget {
  const BlocWebViww({super.key});

  @override
  State<BlocWebViww> createState() => _BlocWebViwwState();
}

class _BlocWebViwwState extends State<BlocWebViww> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: width * 0.165),
        child: Text("Done"),
      ),
    );
  }
}