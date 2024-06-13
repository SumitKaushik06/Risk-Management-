import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtextfield  extends StatelessWidget{

  final String hintText;
  final TextEditingController controller;
  bool? obscureText;
  final TextInputType keyboardType;
  TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

   Customtextfield({super.key,
    required this.hintText,
    required this.controller,
     this.obscureText,
    required this.keyboardType,
     this.textInputAction,
    this.onChanged,
    this.onSubmitted});
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;
    return Card(

    child:  Center(

        child: Container(
          height: 60,
          width:width,
          decoration: BoxDecoration(
            color:  Colors.white.withOpacity(0.6),


            borderRadius: BorderRadius.circular(13),
          boxShadow: [


        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 5),

          )
              ]
          ),
             child: TextFormField(


         decoration: const  InputDecoration(
           hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xff8A8A8A), fontFamily:'monserrst'),
          contentPadding: EdgeInsets.only(left: 10),
           border: InputBorder.none,
           // hintText: 'Enter Your Email Address',
           // hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff8A8A8A), fontFamily:'monserrat'),
         ),
             ),
        ),
      ),
    );
  }

}