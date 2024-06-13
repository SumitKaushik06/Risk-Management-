import 'package:flutter/material.dart';

class Emailverification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(

        title:const Row(
          children: [
            Icon(Icons.arrow_back_ios,size: 25,),
            SizedBox(height: 20,),
            Text("Email Verification", style:TextStyle(fontSize: 28, fontWeight: FontWeight.w300, color: Color(0XFF000000)))
          ],
        ),
      ),
    );
  }
  
}