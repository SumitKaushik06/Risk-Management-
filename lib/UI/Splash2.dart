import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget{
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
        height: height,
        width:width,
        child: Image.asset("assets/images/Screen-2.png"),
      ),
      
      
    );
  }
  
}