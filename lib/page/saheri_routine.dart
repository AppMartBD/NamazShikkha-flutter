import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/sharitime.dart';
import 'facebookadd.dart';

// ignore: must_be_immutable
class Shari extends StatefulWidget {
  @override
  State<Shari> createState() => _ShariState();
}

class _ShariState extends State<Shari> {
  // ignore: prefer_final_fields
  Shaeri _shari = Shaeri();

  // ignore: prefer_final_fields
  DateTime _dateTime = DateTime.now();
  @override
  void dispose() {
    super.dispose();
    // industrial();

    //  print("111111111---11111111111111");
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    String FormateDate = DateFormat.yMMMd().format(_dateTime);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
          title: Text(
            "সাহরীর ও ইফতারের সময়সূচী",
            style: TextStyle(
              fontSize: 22,
            ),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 24, 134, 24),
                        Color.fromARGB(255, 119, 243, 97)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        FormateDate,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "ঢাকা",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ...(_shari.shaeriTime[0]["shaeriShuedle"]
                        as List<Map<String, dynamic>>)
                    .map((shariShoudlelist) => SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 207, 203, 203),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Text(
                                          "${shariShoudlelist["index"]}",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "${shariShoudlelist["day"]}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            "${shariShoudlelist["date"]}",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "সাহরীর শেষ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            "${shariShoudlelist["Shari_time"]} ",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "ইফতারের",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            "${shariShoudlelist["ifatar_time"]}",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormateDate {}
