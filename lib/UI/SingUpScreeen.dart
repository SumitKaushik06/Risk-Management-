import 'package:flutter/material.dart';


class Singupscreeen extends StatelessWidget{
  const Singupscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:const Color(0xff000000),
      

      body: Stack(
        children:[
          Container(
          height: height,
          width: width,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/Screen-3.jpg', ),fit: BoxFit.cover)
          ),
        ),


           Container(

            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(

                      height:height*0.3,
                      width: width*0.7,
                      child: Image.asset('assets/images/Group 5.png')),
                ),
             const  Spacer(),

            const   Text("Welcome to \nRisk Management",style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900, color: Color(0xffFFFFFF),fontFamily:'monserrat'),),
       const      SizedBox(height: 10,),
              const Text('Get Started Logging into your account', style: TextStyle(fontSize: 18, fontFamily:'monserrat',fontWeight: FontWeight.w900,color: Color(0xffFFFFFF)),),
const SizedBox(height:60 ,),

                GestureDetector(

                  child: Container(
                    height: height*0.07,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:const Color(0xff0072C6),
                    ),



                  child: const Center(
                    child:   Text(
                                           'Sign up With Email ', style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF), fontWeight: FontWeight.w900, fontFamily:'monserrat'),

                    ),
                  ),
                  ),
                ),
            const SizedBox(
              height:20,
            ),
                Center(
                  child: RichText(text:const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Existing User ?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xffFFFFFF), fontFamily:'monserrat'),


                      ),
                      TextSpan(
                        text: 'Login Now',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xff0072C6),fontFamily:'monserrat'),
                      ),

                    ]
                  )),
                ),

               const SizedBox(height: 13,)

              ],
            ),
          ),

        ]
      ),








      );
  }
  
}