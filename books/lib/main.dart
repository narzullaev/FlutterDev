
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore',
      theme: ThemeData(
        primaryColor: Colors.purple
      ),
      home: Home(),
    );
  }
}
