import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:url_launcher/url_launcher.dart';
import 'facebookadd.dart';
import 'google_add.dart';
import 'saheri_home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<SplashScreen> {
  // static const String _url =
  //     "https://play.google.com/store/apps/developer?id=Lambda+Technologies";
  // void _launchURL() async {
  //   // ignore: deprecated_member_use
  //   if (!await launch(_url)) throw 'Could not launch $_url';
  // }

  //  @override
  // void initState() {
  //   super.initState();
  //   initialization();
  // }

  // void initialization() async {
  //   // This is where you can initialize the resources needed by your app while
  //   // the splash screen is displayed.  Remove the following example because
  //   // delaying the user experience is a bad design practice!
  //   // ignore_for_file: avoid_print
  //   // print('ready in 3...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('ready in 2...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('ready in 1...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('go!');
  //   //FlutterNativeSplash.remove();
  //   // openingAd();
  // }

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
                              image: AssetImage("assets/splashpic.jpg"),
                              fit: BoxFit.cover))),
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
                          "সাইয়েদুল ইস্তেগফার -",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          " سُبْحَانَ اللّٰهِ وَبِحَمْدِهِ أَسْتَغْفِرُ اللّٰهَ وَأَتُوبُ إِلَيْهِ",
                          // textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "সুবহানাল্লাহি ওয়া বিহামদিহি, আসতাগফিরুল্লাহা ওয়া আতূবু ইলাইহি ||",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                                      fit: BoxFit.cover)),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "নামাজ শিক্ষার নিয়মাবলী ও সুরা-সমূহ",
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
