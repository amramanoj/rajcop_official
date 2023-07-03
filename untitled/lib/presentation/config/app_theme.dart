import 'package:flutter/material.dart';

ThemeData customTheme(){
  return ThemeData(primaryColor: Colors.black,scaffoldBackgroundColor: Colors.white,
   cardColor: Colors.black,textTheme: TextTheme(titleMedium: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 20.0,color: Colors.white),
          titleLarge: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 28.0,color: Colors.white),
          titleSmall: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 13.0,color: Colors.white))

  );
}
class CustomColors{
  static Color black=Colors.black;
  static Color white=Colors.white;
}