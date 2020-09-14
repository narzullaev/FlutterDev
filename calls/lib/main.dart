import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new AppHome(),
));

class AppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

class AppState extends State<StatefulWidget>{

  // List of predefined names
  List<String> mNames = [
    'Ava', 'Harry', 'Jack', 'Jacob', 'Mia', 'Sophie', 'Thomas'
  ];

  // List of predefined contact numbers
  List<String> mPhone = [
    '+60123123345', '+60186773340', '+68236432432', '+69832749823',
    '+73289479837', '+87432823462', '+35764438658'
  ];

  // List of photo assets
  List<String> mPhotos = [
    'ava.png', 'harry.png', 'jack.png', 'jacob.png', 'mia.png', 'sophie.png',
    'thomas.png'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Calls'),
      ),

      body: new Container(
        child: new ListView.builder(
            itemCount: this.mNames.length,
            itemBuilder: (_, int index) => Call(this.mNames[index], this.mPhone[index],
                                                this.mPhotos[index])
        ),
      ),
    );
  }
}

class Call extends StatelessWidget {
  final String mName;
  final String mPhoneNum;
  final String mPhoto;

  Call(this.mName, this.mPhoneNum, this.mPhoto);
  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 22.0,
          backgroundColor: Colors.purpleAccent,
          child: CircleAvatar(
            radius: 21,
            backgroundImage: AssetImage('images/' + mPhoto),
          ),
        ),
        title: Text(mName),
        subtitle: Text(mPhoneNum),
        trailing: Icon(Icons.call, color: Colors.green,),
      ),
    );
  }

}

