import 'package:flutter/material.dart';
import 'package:submission_dicoding/main_menu.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: mainmenu(),
      
    );
  }
}