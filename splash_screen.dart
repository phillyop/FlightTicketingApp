import 'dart:async';

import 'package:booktickets/screens/bottom_bar.dart';
//import 'package:booktickets/screens/login_screen.dart';
//import 'package:booktickets/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomBar()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff526480),
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
