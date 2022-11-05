import 'package:flutter/material.dart';

import '../model/suradescription.dart';
import 'facebookadd.dart';
import 'namajdescription.dart';

// ignore: must_be_immutable
class Sura extends StatefulWidget {
  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  // ignore: prefer_final_fields
  Suralist _suralist = Suralist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("নামাজ শিক্ষা ও সুরা-সমূহ "),
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
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ...(_suralist.suradescription[0]["suralistfulldiscription"]
                      as List<Map<String, dynamic>>)
                  .map((surasomuh) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NamajSikkha(
                                        tittle2: surasomuh["tittle2"],
                                        description: surasomuh["discription"],
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
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "${surasomuh["tittle1"]}",
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
                      ))),
              //     FacebookAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
