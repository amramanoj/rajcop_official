import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final Function onClick;
  const CustomButton({super.key,required this.text,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)
    ,
    ),
    height: MediaQuery.of(context).size.height/15.0,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff020bf3)),
      onPressed: (){onClick();},child: Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(color:Colors.white),),),);
  }
}
