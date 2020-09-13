import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                child: new Theme(data: ThemeData(
                  primaryColor: Colors.purpleAccent,
                  primaryColorDark: Colors.red,
                ), child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white)
                    ),
                    labelText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),)
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/ava.png'),
                    ),
                  ),
                  title: Text('Ava '),
                  subtitle: Text('+60123123345'),
                  trailing: Icon(Icons.call, color: Colors.green,),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/harry.png'),
                    ),
                  ),
                  title: Text('Harry'),
                  subtitle: Text('+60186773340'),
                  trailing: Icon(Icons.call, color: Colors.green,),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/jacob.png'),
                    ),
                  ),
                  title: Text('Jacob'),
                  subtitle: Text('+68236432432'),
                  trailing: Icon(Icons.call, color: Colors.green),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/mia.png'),
                    ),
                  ),
                  title: Text('Mia'),
                  subtitle: Text('+69832749823'),
                  trailing: Icon(Icons.call, color: Colors.green,),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/sophie.png'),
                    ),
                  ),
                  title: Text('Sophie'),
                  subtitle: Text('+73289479837'),
                  trailing: Icon(Icons.call, color: Colors.green),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/thomas.png'),
                    ),
                  ),
                  title: Text('Thomas'),
                  subtitle: Text('+87432823462'),
                  trailing: Icon(Icons.call, color: Colors.green,),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage('images/jack.png'),
                    ),
                  ),
                  title: Text('Jack'),
                  subtitle: Text('+35764438658'),
                  trailing: Icon(Icons.call, color: Colors.green,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

