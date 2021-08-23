
import 'package:aunt_rafiki/pages/boom_colour_changer.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
      ),
      home: BoomColourChanger(),
    );
  }
}


