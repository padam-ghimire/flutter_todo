
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/home_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
      
    );
  }

}