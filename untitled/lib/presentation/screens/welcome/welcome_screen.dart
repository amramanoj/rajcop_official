import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/presentation/config/app_route.dart';
import 'package:untitled/presentation/config/app_theme.dart';
class WelcomeScreen extends StatelessWidget {
  static int i=0;

 const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

   Timer(const Duration(seconds: 3), () {
if(i==0){
  i++;
  Navigator.pushReplacementNamed(context, "home");
}


    });
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height/3,),
        Center(child:  Text("SHARE ON LAN",style: Theme.of(context).textTheme!.titleLarge,)),
        const SizedBox(height: 20.0,),
        Container(
          width: MediaQuery.of(context).size.width-100,
          height: MediaQuery.of(context).size.height/3,
          margin: const EdgeInsets.symmetric(horizontal: 50.0),
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/img_splash.png"))),),
        const SizedBox(height: 20.0,),
        const Center(child: CircularProgressIndicator(color: Colors.blue,backgroundColor: Colors.white,))
      ],
    ),);
  }
}
