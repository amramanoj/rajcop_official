import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/presentation/config/app_route.dart';
import 'package:untitled/presentation/config/app_theme.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/Bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => LoginBloc(),
    child: MaterialApp(
      theme: customTheme(),
      onGenerateRoute: AppRoute.appRoute, initialRoute:
    "welcome", debugShowCheckedModeBanner: false,),
  ));
}