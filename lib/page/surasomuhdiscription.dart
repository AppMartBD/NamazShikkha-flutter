import 'package:flutter/material.dart';

import 'facebookadd.dart';

class Surasomuhdiacription extends StatefulWidget {
  final String suradiscription;
  final String banglaonubad;
  Surasomuhdiacription(
      {required this.banglaonubad, required this.suradiscription});

  @override
  State<Surasomuhdiacription> createState() => _SurasomuhdiacriptionState();
}

class _SurasomuhdiacriptionState extends State<Surasomuhdiacription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("নামাজ শিক্ষার নিয়মাবলী ও সুরা-সমূহ"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                  Color.fromARGB(255, 24, 134, 24),
                  Color.fromARGB(255, 119, 243, 97)
                ])),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 40, 68),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color.fromARGB(255, 24, 134, 24),
                              Color.fromARGB(255, 119, 243, 97)
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          widget.suradiscription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(widget.banglaonubad,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                    SizedBox(height: 10),
                    //    FacebookAdd(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
