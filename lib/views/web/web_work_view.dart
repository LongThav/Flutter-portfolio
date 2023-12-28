import 'package:flutter/material.dart';

class WorkWebView extends StatefulWidget {
  const WorkWebView({super.key});

  @override
  State<WorkWebView> createState() => _WorkWebViewState();
}

class _WorkWebViewState extends State<WorkWebView> {
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