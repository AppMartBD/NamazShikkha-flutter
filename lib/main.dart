//import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'page/splash_home.dart';

void main() {
 // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();

 // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FacebookAudienceNetwork.init(
  //   testingId: "328404cebf50ec1fdb05795c0007a8a7", //test
  //   //testingId: "1096060697976196", //orginal
  //   iOSAdvertiserTrackingEnabled: true,
  // );

  runApp(SehariApp());
}

class SehariApp extends StatelessWidget {
  const SehariApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "নামাজ শিক্ষা",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class splashpage extends StatefulWidget {
//   const splashpage({Key? key}) : super(key: key);
//
//   @override
//   State<splashpage> createState() => _splashpageState();
// }
//
// class _splashpageState extends State<splashpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: 400,
//       color: Colors.brown,
//       child: FlutterLogo(),
//
//     );
//   }
// }

