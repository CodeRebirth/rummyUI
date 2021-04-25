import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final text;
  Button(this.text);
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button>with SingleTickerProviderStateMixin {
   double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }
@override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
@override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(

                onTapDown: _tapDown,
                onTapUp: _tapUp,
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButton(),
                ),
    );
  }
Widget  _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.yellow,
              Colors.green,
            ],
          )),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
void _tapDown(TapDownDetails details) {
    if(widget.text == "Settings"){
      Navigator.of(context).pushNamed("settings");
    }
    _controller.forward();
  }
void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}