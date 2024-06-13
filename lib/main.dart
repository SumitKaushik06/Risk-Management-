import 'package:flutter/material.dart';
import 'package:riskmanagement/UI/EmailVerification.dart';
import 'package:riskmanagement/UI/Login.dart';
import 'package:riskmanagement/UI/Register.dart';
import 'package:riskmanagement/UI/Splash1.dart';
import 'package:riskmanagement/UI/Splash2.dart';
import 'package:riskmanagement/Utils/CustomTextField.dart';
//import 'package:riskmanagement/Utils/CustomTextfield.dart';
//import 'package:riskmanagement/Utils/CustomButton.dart';
import 'package:riskmanagement/Utils/custombutton.dart';

import 'UI/SingUpScreeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Register()

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

    );
  }
}
