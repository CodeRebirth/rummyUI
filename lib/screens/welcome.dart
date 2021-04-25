import 'package:flutter/material.dart';
import 'package:rummyuiapp/widgets/button.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(  
          fit: BoxFit.cover,
          image:AssetImage("assets/images/rummy1.png")
        )),
        child:Stack(
          children: [
          Positioned(
            bottom: 190,
            left:100,
            right:100,
              child: Align(
              alignment: Alignment.bottomCenter,
              child:Button("Start",)
            ),
          ),
          Positioned(
            bottom: 80,
            left:100,
            right:100,
              child: Align(
              alignment: Alignment.bottomCenter,
              child:Button("Settings",)
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
              child: CircleAvatar(
              minRadius: 25,
              backgroundColor: Colors.amber,
              child: Icon(Icons.help_outline,size: 30,color: Colors.black),
            ),
          )
        ],)
      ));
  }
}

