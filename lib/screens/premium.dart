import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget {
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Premium"),
      backgroundColor: Colors.green[700],
    ),
    body: Text("Go premium"),
    );
  }
}