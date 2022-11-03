import 'package:flutter/material.dart';
import 'facebookadd.dart';

class NamajSikkha extends StatefulWidget {
  final String tittle2;
  final String description;
  NamajSikkha({required this.tittle2, required this.description});

  @override
  State<NamajSikkha> createState() => _NamajSikkhaState();
}

class _NamajSikkhaState extends State<NamajSikkha> {
  @override
  void dispose() {
    super.dispose();
    // industrial();

    print("111111111---11111111111111");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("নামাজ শিক্ষার নিয়মাবলী"),
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
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 40, 68),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          Color.fromARGB(255, 15, 92, 15),
                          Color.fromARGB(255, 51, 126, 38)
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
                      widget.tittle2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(widget.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                // FacebookAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
