import 'package:flutter/material.dart';
import 'package:tourist_guide_in_yemen/features/customer/home%20screen/presentation/pages/home.dart';

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
      home: HomePage(),

    );






       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
