import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green[700],
           title: Text("Help"),
         ),
    );
  }
}