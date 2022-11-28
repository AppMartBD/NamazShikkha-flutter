import 'package:flutter/material.dart';

import 'saheri_home.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // static const String _url =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: 550,
                      // width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/homayun.jpg"),
                            fit: BoxFit.cover),
                      )),
                  Positioned(
                    left: 10,
                    right: 10,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "বাংলা উক্তি সমগ্র",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(155, 255, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "” জীবনে কখনো কাউকে বিশ্বাস করতে যেও না।\n কারন,যাকেই তুমি বিশ্বাস করবে সেই তোমাকে ঠকাবে। ”",
                          // textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 1, 128),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8,
                        // ),
                        // Text(
                        //   "সুবহানাল্লাহি ওয়া বিহামদিহি, আসতাগফিরুল্লাহা ওয়া আতূবু ইলাইহি ||",
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //     color: Color.fromARGB(155, 0, 0, 0),
                        //     fontSize: 14,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        SizedBox(
                          height: 70,
                        ),
                        //   nativeAd(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // ignore: unused_element
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SehariHome_Screen()));
                        },
                        child: SizedBox(
                          height: 50,
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/button-ground-01.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "বিখ্যাত ব্যক্তি ও মনীষীদের সেরা উক্তি সমূহ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              // onTap: _launchURL,
                              child: Container(
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/button-ground-01.jpg"),
                                    )),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image:
                                            AssetImage("assets/app-icon.png"),
                                      )),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "অন্যন্য অ্যাপ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/button-ground-01.jpg"),
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/ratting-icon.png"),
                                      )),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      "রেটিং",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/button-ground-01.jpg"),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/Shareicon.png"),
                                )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "শেয়ার",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
