import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Listview_with_builder(),));
}

class Listview_with_builder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: Center(
            child: Image.asset("assets/images/adidas1.jpg"),
          ),
        );
      },

      ),
    );
  }
}
