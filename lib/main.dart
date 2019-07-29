import 'package:awesome/screens/about.dart';
import 'package:flutter/material.dart';
import 'package:awesome/screens/home.dart';
import 'package:awesome/screens/about.dart';
import 'package:awesome/screens/login.dart';
import 'package:awesome/screens/products.dart';
import 'package:awesome/screens/settings.dart';
import 'package:awesome/screens/messages.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes= <String, WidgetBuilder>{
      MyHomePage.tag:(context)=>MyHomePage(),
      LoginPage.tag:(context)=>LoginPage(),
      AboutPage.tag:(context)=>AboutPage(),
      ProductPage.tag:(context)=>ProductPage(),
      SettingsPage.tag:(context)=>SettingsPage(),
      MessagePage.tag:(context)=>MessagePage(),
      

      
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Login',
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: LoginPage(),
      ),
      routes: routes,
    );
  }
}
