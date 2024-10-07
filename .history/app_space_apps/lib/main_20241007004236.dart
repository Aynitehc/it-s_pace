import 'package:flutter/material.dart';
import 'welcome.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool primeraVez = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: primeraVez ? Welcome() : Home(),
    );
  }
}

   
