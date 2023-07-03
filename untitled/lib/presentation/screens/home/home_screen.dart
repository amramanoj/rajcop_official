import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        child: Center(child: Text("Login successful",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.green),))),);
  }
}
