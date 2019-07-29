import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  static String tag = "payment";
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        backgroundColor: Colors.green[700],
      ),
      body: Text("Welcome to the payment page"),
      
    );
  }
}