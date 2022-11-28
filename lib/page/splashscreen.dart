import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ukti_somogro/page/homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/homepage.png",
        fit: BoxFit.fill,
      ),
    );
  }
}