import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Expanded buildCategory({MaterialColor color, String image, String title}){

    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: ListTile(
            leading: Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white70
              ),),
            trailing: Image.asset('images/$image'),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildCategory(color: Colors.red, image:'language.png', title:'Language'),

            ],
          ),
        ),
      ),
    );
  }
}
