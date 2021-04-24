import 'package:flutter/material.dart';
// import 'package:rummyuiapp/widgets/clipper.dart';

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
        child:Stack(children: [
          Positioned(
            bottom: 100,
            left: MediaQuery.of(context).size.width/2-100,
              child: Align(
              alignment: Alignment.bottomCenter,
              child:ElevatedButton(
                style: ButtonStyle(
                  elevation:MaterialStateProperty.all(40),
                  minimumSize: MaterialStateProperty.all(Size(200,100)),
                  backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
                child:Text("START",style:TextStyle(fontSize: 30)),
                onPressed:(){ 
                  
              })
            ),
          )
        ],)
      ));
  }
}