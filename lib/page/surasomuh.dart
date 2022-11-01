import 'package:flutter/material.dart';

import '../model/suralist.dart';
import 'facebookadd.dart';
import 'surasomuhdiscription.dart';

// ignore: must_be_immutable
class SuraSomuh extends StatefulWidget {
  @override
  State<SuraSomuh> createState() => _SuraSomuhState();
}

class _SuraSomuhState extends State<SuraSomuh> {
  // ignore: prefer_final_fields
  SuraList _suralist = SuraList();
  @override
  void dispose() {
    super.dispose();
    industrial();

    print("111111111---11111111111111");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Text("সুরা-সমূহ")
            ],
          ),
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
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ...(_suralist.suralistdiscription[0]["surasomuhlist"]
                      as List<Map<String, dynamic>>)
                  .map(
                (sura) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Surasomuhdiacription(
                                      banglaonubad: sura["banglaonubad"],
                                      suradiscription: sura["suradiscription"],
                                    )));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color.fromARGB(255, 34, 115, 129),
                                  Color.fromARGB(255, 5, 93, 116)
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "${sura["suratittle"]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
              FacebookAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
