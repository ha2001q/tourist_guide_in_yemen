import 'package:flutter/material.dart';
import 'features/customer/home screen/presentation/pages/home.dart';
import 'features/customer/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SplashScreen(),

    );






       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
