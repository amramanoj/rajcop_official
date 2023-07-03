
import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/home/home_screen.dart';
import 'package:untitled/presentation/screens/log_in/login_screen.dart';
import 'package:untitled/presentation/screens/welcome/welcome_screen.dart';

class AppRoute{
  static Route appRoute(RouteSettings settings){
   switch(settings.name){
     case "welcome":
       return MaterialPageRoute(builder: (cnt)=> const WelcomeScreen());

     case "login":
       return MaterialPageRoute(builder: (cnt)=> LogInScreen());
     case "home":
       return MaterialPageRoute(builder: (cnt)=> const HomeScreen());
     default :
       return MaterialPageRoute(builder: (cnt)=>const Scaffold(body: Center(child: Text("Wrong path found")),));
   }
  }

}