


import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled/presentation/config/app_theme.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/Bloc.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/Event.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/State.dart';
import 'package:untitled/presentation/widget/app_bar.dart';
import 'package:untitled/presentation/widget/button.dart';
import 'package:untitled/presentation/widget/text_field.dart';
class LogInScreen extends StatelessWidget {
  static int i=0;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


 LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(appBar: customAppBar(),
      backgroundColor: CustomColors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width-20,
            height: MediaQuery.of(context).size.height/3+30+30,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(color: CustomColors.white,borderRadius: BorderRadius.circular(10.0)),
            child: Column(children: [
              const SizedBox(height: 10.0,),
             Container(
               height: (MediaQuery.of(context).size.height/3)/3,
               margin: const EdgeInsets.symmetric(horizontal: 10.0),child:CustomTextField(title: 'Email Id', textEditingController: emailController,) ,)
             , const SizedBox(height: 10.0,),
              Container(
                height: (MediaQuery.of(context).size.height/3)/3,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),child:CustomTextField(title: 'Password', textEditingController: passwordController,isPassword: true,) ,) ,
            const SizedBox(height: 10.0,),




              SizedBox(height: 30.0,
                child: BlocBuilder<LoginBloc, LoginState>(
  builder: (context, state) {
if(state is LoginValidationFailedState){
  return Text(state.errorMsg,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),);
}else if(state is LoginLoadingState){
  return const Center(child: CircularProgressIndicator(color: Color(0xff1005f1),),);
}
else if(state is LoginWrongCredentialsState){
  return Text("wrong Credentials try again ..",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),);

}
else if(state is LoginLoginSuccessState){
  FocusScope.of(context).requestFocus(FocusNode());
  Navigator.pushNamed(context, "home");
  return const Text("");
}
else{
  return Text("",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),);
}

  },
),
              ),
const SizedBox(height: 5.0,),



              SizedBox(
                height: (MediaQuery.of(context).size.height/3)/3-20,
                
                
                child: CustomButton(text: "Submit", onClick: () {
                  
                  BlocProvider.of<LoginBloc>(context).add(LoginButtonPressEvent(emailId: emailController.value.text, password:passwordController.value.text));
                  
                  
                }),
                
                
                
              )],),),
        ),
      ),);
  }
}
