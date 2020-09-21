import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Expanded buildCategory({Color color, String image, String title}){

    return Expanded(
      child: FlatButton(
        onPressed: (){
          print(title);
        },
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
              buildCategory(color: Colors.green, image:'language.png', title:'LANGUAGE'),
              buildCategory(color: Colors.yellow.shade700, image:'literature.png', title:'LITERATURE'),
              buildCategory(color: Colors.orange, image:'fiction.png', title:'FICTION'),
              buildCategory(color: Colors.redAccent.shade700, image:'detective.png', title:'DETECTIVE'),
              buildCategory(color: Colors.purple, image:'science.png', title:'SCIENCE'),
              buildCategory(color: Colors.blue, image:'history.png', title:'HISTORY'),
              buildCategory(color: Colors.purple.shade700, image:'technology.png', title:'TECHNOLOGY'),
            ],
          ),
        ),
      ),
    );
  }
}
