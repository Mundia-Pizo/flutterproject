import 'package:flutter/material.dart';
import 'package:awesome/screens/home.dart';


class LoginPage extends StatefulWidget {
  static String tag='login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo=Hero(
         tag: 'hero',
         child: CircleAvatar(
           backgroundColor: Colors.transparent,
           radius: 120,
           child: Image.asset('assets/profile1.jpeg'),
         ),
    );
    final email=TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
       ),
      );

       final password=TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32)
        ),
       ),
      );
      final forgotLabel = FlatButton(
        child: Text('Forgot password', style: TextStyle(color: Colors.greenAccent),),
        onPressed: (){
          
        },
      );
      final alreadHaveAccount = FlatButton(
        child: Text('Dont have an account? Sign up', style: TextStyle(color: Colors.greenAccent),),
        onPressed: (){

        },
      );
      final loginButton=Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Material(
          borderRadius: BorderRadius.circular(30),
          shadowColor: Colors.lightBlueAccent.shade100,
          child: MaterialButton(
            minWidth: 200,
            height: 42,
            onPressed: (){
              Navigator.of(context).pushNamed(MyHomePage.tag);
            },
            color: Colors.lightBlueAccent,
            child: Text('Log In', style:TextStyle(color: Colors.white)),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 48),
            email,
            SizedBox(height: 8),  
            password,
            SizedBox(height: 24),
            loginButton,
            forgotLabel,
            alreadHaveAccount,
          ],
        ),
      ),
    );
  }
} 