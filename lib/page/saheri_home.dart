// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/sharitime.dart';
import 'facebookadd.dart';
import 'google_add.dart';
import 'saheri_routine.dart';
import 'sura.dart';
import 'surasomuh.dart';
import 'package:url_launcher/url_launcher.dart';

class SehariHome_Screen extends StatefulWidget {
  SehariHome_Screen({Key? key}) : super(key: key);
  // ignore: unused_field
  final Shaeri _shaeri = Shaeri();

  @override
  State<SehariHome_Screen> createState() => _SehariHome_ScreenState();
}

class _SehariHome_ScreenState extends State<SehariHome_Screen> {
  // ignore: prefer_final_fields
  DateTime _dateTime = DateTime.now();

  static const String _url = "https://lambdabd.com/";
  static const String _url1 =
      "https://play.google.com/store/apps/developer?id=Lambda+Technologies";

  // @override
  // void initState() {
  //   super.initState();
  //   openingAd;
  //   print("000000000000-------00000000000000");
  // }

  @override
  void dispose() {
    super.dispose();
    industrial();

    print("111111111---11111111111111");
  }

  void _launchURL() async {
    // ignore: deprecated_member_use
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL1() async {
    // ignore: deprecated_member_use
    if (!await launch(_url1)) throw 'Could not launch $_url1';
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    String FormateDate = DateFormat.yMMMd().format(_dateTime);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("নামাজ শিক্ষা ও সুরা-সমূহ"),
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
      drawer: Drawer(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color.fromARGB(255, 24, 134, 24),
                    Color.fromARGB(255, 119, 243, 97)
                  ])),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/namajicon.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "নামাজ শিক্ষা\nও সুরা-সমূহ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sura()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/namajicon.jpg")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "নামাজের নিয়ম ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SuraSomuh()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundImage: AssetImage("assets/namajicon.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "সুরা-সমূহ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shari()));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/namajicon.jpg")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "সাহরীর ও ইফতারের সময়সূচী",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color.fromRGBO(243, 213, 123, 1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _launchURL,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/wbicon.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ওয়েভ সাইট ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: _launchURL1,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/playstore2.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "অন্যন্য অ্যাপ ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BannerAdmob(),
                ],
              ),
            )
          ],
        ),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 460,
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage("assets/mosuw3.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        FormateDate,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "সাইয়েদুল ইস্তেগফার -",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "أَسْتَغْفِرُ اللّٰهَ وَأَتوبُ إِلَيْهِ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(177, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "আসতাগফিরুল্লাহা ওয়া আতূবু ইলাইহি ||",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(177, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      nativeAd(),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            FacebookAdd(),
            SizedBox(height: 10),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sura()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF188618), Color(0xFF1A4D12)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Text(
                        'নামাজের নিয়ম',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SuraSomuh()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 24, 134, 24),
                          Color.fromARGB(255, 26, 77, 18)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Text(
                        'সুরা-সমূহ ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shari()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 24, 134, 24),
                          Color.fromARGB(255, 26, 77, 18)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Text(
                        'সাহরীর ও ইফতারের সময়সূচী',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
