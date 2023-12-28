import 'package:flutter/material.dart';

class ContactWebView extends StatefulWidget {
  const ContactWebView({super.key});

  @override
  State<ContactWebView> createState() => _ContactWebViewState();
}

class _ContactWebViewState extends State<ContactWebView> {
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
