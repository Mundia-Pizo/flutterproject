import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatefulWidget {
  static String tag="details_page";
  @override
  _AboutPageState createState() => _AboutPageState();
}
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final alucard=Hero(
      tag:"hero",
      child: Padding(
        child: CircleAvatar(
          radius: 80,
          backgroundColor: Colors.lightGreen,
          backgroundImage: AssetImage('assets/mundia.jpg'),
        ), 
        padding: EdgeInsets.all(8),
      ),
    );

  final welcome=Padding(
    padding: EdgeInsets.all(8),
    child: Text(
      'Welcome to the details page',
      style: TextStyle(fontSize: 16, color: Colors.brown),

    ),
  );

  final lorem=Padding(
     padding: EdgeInsets.all(8),
     child: Text("Welcome to mundia's Details page " ,
     style: TextStyle(fontSize: 16, color: Colors.black),),

  );

  final draw=Padding(
    padding: EdgeInsets.zero,
    );

  final body=Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28),
    color: Colors.white,
    child: Column(children: <Widget>[
      alucard, welcome, lorem, draw
    ],),

  );
    return Scaffold(
      body: body,
    );
  }
}