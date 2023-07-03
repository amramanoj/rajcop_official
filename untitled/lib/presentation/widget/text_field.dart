import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  final bool isPassword;
  const CustomTextField({super.key,required this.title,required this.textEditingController,this.isPassword=false});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft,child:
        Text(title,style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color(0xff0025f1)),),
        ),
        const SizedBox(height: 5.0,),
        Container(
          decoration: BoxDecoration(color: const Color(0xffa1a3a4),
          borderRadius: BorderRadius.circular(10.0)),
          
          child: TextFormField(
style: const TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),
controller: textEditingController,
obscureText: isPassword?true:false,
            decoration: const InputDecoration(

border: OutlineInputBorder(

),focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none
            ),enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none
    ),

          )

              ,),
        ),
      ],
    );
  }
}
