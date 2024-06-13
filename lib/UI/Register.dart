import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riskmanagement/Utils/CustomTextField.dart';

class Register extends StatefulWidget{
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
   return Scaffold(
     body: Stack(
   children:[
   SizedBox(
   height: height*0.44,
     width: width ,
     child: Image.asset("assets/images/marcus-kauffman--iretlQZEU4-unsplash 1 (2).png", fit: BoxFit.cover,),
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


    Row(
    children: [
    Image.asset("assets/images/ph_user.png"),
   const  SizedBox(width: 10,),
  const   Text("Your Name ", style:TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0XFF000000), fontFamily:'monserrat')),
const SizedBox(height: 10,),
      Customtextfield(hintText: 'Enter your Name', controller:namecontroller , keyboardType: TextInputType.text)
    ],
    ),

   ])
    )
    )
   )
    )
    ]
    )
    );
  }
}