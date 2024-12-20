import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourist_guide_in_yemen/core/utils/images.dart';
import 'package:tourist_guide_in_yemen/features/customer/add_comments/add_comments.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
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
      .pushReplacement(MaterialPageRoute(builder: (context) => AddComments())));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            // alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(Images.splash),

          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 450,),
                Text("Welcome to Yemen",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:Colors.blueGrey),),
                Text("tourist guide",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                SizedBox(height: 110,),
                // InkWell(
                //   onTap:() {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => LoginScreen(),
                //       ),
                //     );
                //   },
                //   child: Container(
                //     alignment: Alignment.center,
                //     height: 70,
                //    width: 350,
                //    decoration: BoxDecoration(
                //      borderRadius: BorderRadius.circular(100),
                //      color: Colors.deepOrangeAccent
                //    ),
                //     child: Text("Lets Start!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                //   ),
                // )
              ],
            )
          ),

          // Expanded(
          //   // child: SvgPicture.asset(Images.splash,width: double.infinity,height: double.infinity,),
          // ),
          SizedBox(height: 200,),
          // Expanded(
          // child:SizedBox(height: 200,)
          // ),
          // Expanded(
          //
          //     child:Text("adsfdgfhgjhdfgh")
          //
          // )



        ]



    ),


    );
  }
}
