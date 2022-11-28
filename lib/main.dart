import 'package:flutter/material.dart';
import 'package:ukti_somogro/page/splashscreen.dart';

void main() {
  runApp(UktiApp());
}

class UktiApp extends StatefulWidget {
  const UktiApp({Key? key}) : super(key: key);

  @override
  State<UktiApp> createState() => _UktiAppState();
}

class _UktiAppState extends State<UktiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "উক্তি সমগ্র",
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
