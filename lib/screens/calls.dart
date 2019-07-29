import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green[700],
      title: Text("Calls"),
    ),
    body: Center(
      child: Text("Welcome to the calls section"),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.green[700],
      child: Icon(Icons.add_call),
      onPressed: (){

      },
    ),
    );
  }
}