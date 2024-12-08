import 'package:flutter/material.dart';
import 'package:tourist_guide_in_yemen/features/auth/presentation/pages/login/login_screen.dart';
import 'package:tourist_guide_in_yemen/features/customer/root_screen/root_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(),

    );






       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
