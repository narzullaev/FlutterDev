import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Expanded buildCategory({Color color, String image, String title}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {},
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
                  title: 'LANGUAGE'),
              buildCategory(
                  color: Colors.yellow.shade700,
                  image: 'literature.png',
                  title: 'LITERATURE'),
              buildCategory(
                  color: Colors.orange, image: 'fiction.png', title: 'FICTION'),
              buildCategory(
                  color: Colors.redAccent.shade700,
                  image: 'detective.png',
                  title: 'DETECTIVE'),
              buildCategory(
                  color: Colors.purple, image: 'science.png', title: 'SCIENCE'),
              buildCategory(
                  color: Colors.blue, image: 'history.png', title: 'HISTORY'),
              buildCategory(
                  color: Colors.purple.shade700,
                  image: 'technology.png',
                  title: 'TECHNOLOGY'),
            ],
          ),
        ),
      ),
    );
  }
}
