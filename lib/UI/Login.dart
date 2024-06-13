import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:riskmanagement/Utils/CustomTextField.dart';


// import 'package:management//icons.dart';
class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller=TextEditingController();
    TextEditingController passwordcontroller =TextEditingController();
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children:[
          Container(
          height: height*0.4,
          width: width ,
          child: Image.asset("assets/images/marcus-kauffman--iretlQZEU4-unsplash 1 (1).png", fit: BoxFit.cover,),
        ),


    Container(
      margin: const  EdgeInsets.symmetric(horizontal: 10),
      child:const Column(
        children: [
           SizedBox(height:80,),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children :[

                Icon(Icons.arrow_back_ios,size: 28,color: Color(0xffFFFFFF),),
               SizedBox(width:100),
               Text("Login", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900,color: Color(0xffFFFFFF), fontFamily:'monserrat'),),

             ]
           ),
        ],
      ),
    ),

    Positioned(
      top: MediaQuery.of(context).size.height*0.3,
      child: Container(
        height:height ,
        width: width,
        decoration:const  BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),

          ),
          color: Color(0xffFFFFFF)
        ),
child:  SingleChildScrollView(
  child: Container(
    margin:const  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [


         const    Row(
              children: [
                Icon(Icons.email_outlined,size:22, color: Color(0xff000000),),
                SizedBox(width: 10,),
                Text("Email Address", style:TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0XFF000000), fontFamily:'monserrat')),

              ],
            ),


             Container(
              height: 60,
              width:width,
              decoration: BoxDecoration(
                  color:  Colors.white.withOpacity(0.6),


                  borderRadius: BorderRadius.circular(20),
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
controller: namecontroller,

                decoration: const  InputDecoration(
                  hintText: 'Enter Your Email Address',
                  hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0XFF8A8A8A),fontFamily:'monserrat'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: InputBorder.none,
                  // hintText: 'Enter Your Email Address',
                  // hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff8A8A8A), fontFamily:'monserrat'),
                ),
              ),
            ),
         const SizedBox(height: 20,),
       Row(
            children: [
            Image.asset("assets/images/Group 19.png"),

          const SizedBox(width: 10,),
            const    Text("Password",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900,fontFamily:'monserrat', color: Color(0xff000000) ),),
            ],
          ),
            Container(
              height: 60,
              width:width,
              decoration: BoxDecoration(
                  color:  Colors.white.withOpacity(0.6),


                  borderRadius: BorderRadius.circular(20),
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
controller: passwordcontroller,

                decoration: const  InputDecoration(
                  hintText: 'Enter Your Password ',
                  hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0XFF8A8A8A),fontFamily:'monserrat'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: InputBorder.none,
                  // hintText: 'Enter Your Email Address',
                  // hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff8A8A8A), fontFamily:'monserrat'),
                ),
              ),
            ),
            const SizedBox(height: 10,),
           const Align(
             alignment: Alignment.topRight,
             child:   Text(

                "Forgot Password ?",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900, fontFamily:'monserrat', color: Color(0xffFF0000)),),
           ),

const SizedBox(height: 70,),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color:const Color(0xff0072C6)
            ),
          child:const Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, fontFamily:'monserrat', color: Color(0xffFFFFFF)),),
          ),
const SizedBox(height: 130,),
Align(
  alignment: Alignment.center,
  child: RichText(text:const TextSpan(
    children: [
      TextSpan(
        text: "Don't have an account?", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily:'monserrat', color: Color(0xff8A8A8A))
      ),
    TextSpan(
      text: "Sign Up ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, fontFamily:'monserrat', color: Color(0xff0072C6))
    )

    ]
  )),
)
              ],
        ),
  ),
),
      ),
    )
        ]
      ),
    );
  }
}
