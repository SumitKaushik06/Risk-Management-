import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget{
  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
   return Scaffold(
     body: Container(
       height: height,
       width: width,
       child: Image.asset("assets/images/Screen-1.png", fit: BoxFit.fill,),
     ),


   );
  }
}