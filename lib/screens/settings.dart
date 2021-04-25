import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
           image: DecorationImage(
             fit:BoxFit.cover,
             image:AssetImage('assets/images/settings.png'))
             
         ),
         child:Stack(
           children: [
           Positioned(
             top:120,
             left:20,
             child: Text("Player - Rummy King",style: TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold,fontFamily: "PressStart"),)),
           Positioned(
             top:160,
             left:20,
             child: Text("Level-100",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart"),)),
            Positioned(
             top:190,
             left:20,
             child: Text("Balance: 100000",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold,fontFamily: "PressStart"),)),
            Positioned(
             top:230,
             left:20,
             child: Text("LOSS: 200",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart"),)),
            Positioned(
             top:260,
             left:20,
             child: Text("WIN: 1000",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart"),)),
             Positioned(
              //  width: 500,
               bottom: 30,
               left: 100,
               right: 100,
                 child: Container(
                 width:10000,
                 color: Colors.black.withOpacity(0.5),
                 padding: EdgeInsets.all(10),
                 height: MediaQuery.of(context).size.height * 0.6,
                 child: ListView(
                   children: [
                     SizedBox(height: 100),
                     Text("SOUND:- ON",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart")),
                     SizedBox(height: 50,),
                     Text("GFX:-  OFF",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart")),
                     SizedBox(height: 50,),
                     Text("HELP",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart")),
                     SizedBox(height: 50,),
                     Text("LOGOUT",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "PressStart")),
                     SizedBox(height: 50,),
                   ],
                 ),
               ),
             )
         ],),
       ),
    );
  }
}