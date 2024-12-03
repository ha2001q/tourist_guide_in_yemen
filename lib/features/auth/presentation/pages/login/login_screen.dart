import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_guide_in_yemen/core/utils/styles.dart';

import '../../../../../core/utils/images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(Images.janbiahBack),
           ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 170,),
                  Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  Text("Happy to see you again! Please enter your email and",style: TextStyle(color: Colors.grey),),
                  Text("password to login to your account.",style: TextStyle(color: Colors.grey)),

                ],
                         ),
             ],
           ),
        ]
      ),
    );
  }
}
