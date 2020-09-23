

import 'package:books/languages.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Expanded buildCategory(
      {Color color, String image, String title, BuildContext context, StatelessWidget activity}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          print('hello');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => Languages()),
          );
        },
        color: color,
        child: Center(
          child: ListTile(
            leading: Text(
              title,
              style: TextStyle(fontSize: 22.0, color: Colors.white70),
            ),
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
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('Bookstore'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildCategory(
                  color: Colors.green,
                  image: 'language.png',
                  title: 'LANGUAGE',
                  context: context,
                  activity: Languages()),
              buildCategory(
                  color: Colors.yellow.shade700,
                  image: 'literature.png',
                  title: 'LITERATURE',
                  context: context,
                  ),
              buildCategory(
                  color: Colors.orange, image: 'fiction.png', title: 'FICTION', context: context),
              buildCategory(
                  color: Colors.redAccent.shade700,
                  image: 'detective.png',
                  title: 'DETECTIVE', context: context),
              buildCategory(
                  color: Colors.purple, image: 'science.png', title: 'SCIENCE', context: context),
              buildCategory(
                  color: Colors.blue, image: 'history.png', title: 'HISTORY', context: context),
              buildCategory(
                  color: Colors.purple.shade700,
                  image: 'technology.png',
                  title: 'TECHNOLOGY', context: context),
            ],
          ),
        ),
      ),
    );
  }
}
