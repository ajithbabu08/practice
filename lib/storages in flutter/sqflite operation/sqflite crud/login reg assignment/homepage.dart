import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home Page"),),
      body: Container(

        decoration: const BoxDecoration(

            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/mixed-fruits splash.jpeg"))),

      ),

    );

  }
}
