import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  static String tag="messages";
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
      final chat=TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
       ),
      );

    return Scaffold(
      body: Center(
          child: Text("Welcome to the message center"),
      ),
    );
  }
}