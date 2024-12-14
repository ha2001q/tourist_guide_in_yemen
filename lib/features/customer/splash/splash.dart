import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tourist_guide_in_yemen/features/customer/splash/splash_screen.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animationController.repeat();

    Timer(
        Duration(seconds: 10),
            () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => SplashScreen())));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/svg/janbiah.svg'), // مسار الصورة
            fit: BoxFit.cover, // لضبط الصورة لتملأ الحاوية
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // لمركز المحتوى عموديًا
          children: [
            // إضافة CircularProgressIndicator
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black), // لون الدائرة
            ),
            SizedBox(height: 20), // مسافة بين الدائرة والنص
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                '!مرحباً بكم في دليل السائح اليمني',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}