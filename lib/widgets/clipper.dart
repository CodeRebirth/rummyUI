import 'package:flutter/material.dart';
class Clipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
  Path path = new Path();
  path.lineTo(0.0, size.height/3);
  var firstPoint = Offset(0.0, size.height/3);
  var controlPoint = Offset(size.width/2, size.height/1.5);
  var endPoint = Offset(size.width,size.height/3);
  path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, firstPoint.dx, firstPoint.dy);
  path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
  path.lineTo(size.width,size.height/3);
  path.lineTo(size.width,0.0);
  path.close();
  return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}