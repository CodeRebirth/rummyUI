import 'package:flutter/material.dart';
import 'screens/settings.dart';
import 'screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RummyUI',
      initialRoute: "/",
      routes: {
        "/":(context)=>Welcome(),
        "settings":(context)=> Settings()
      },
    );
  }
}

