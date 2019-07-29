import 'package:awesome/screens/login.dart';
import 'package:awesome/screens/premium.dart';
import 'package:flutter/material.dart';
import 'package:awesome/screens/messages.dart';
import 'package:awesome/screens/settings.dart';
import 'package:awesome/screens/products.dart';
import 'package:awesome/screens/account.dart';
import 'package:awesome/screens/help.dart';
import 'package:awesome/screens/payment.dart';
import 'package:awesome/screens/calls.dart';



class MyHomePage extends StatefulWidget {
  static String tag = 'home';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  TabController  controller;

  // @override
  // void initState(){
  //   super.initState();
  //   controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  // }



  int currentTab=0;
  ProductPage product;
  MessagePage message;
  SettingsPage settings;

  List<Widget>pages;
  Widget currentPage;

  @override
  void initState(){
  product = ProductPage();
  message = MessagePage();
  settings = SettingsPage();
  pages =[product, message,settings];

  currentPage = product;
  super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: currentPage,
     appBar:AppBar(
          backgroundColor: Colors.green[700],
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(50, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(22))
              ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search products",
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Icon(Icons.search, color: Colors.white,)
                    ),
                   ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(children: <Widget>[
                    IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.mic, color: Colors.white,),
                    ),
                    VerticalDivider(color:Colors.white54),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert, color: Colors.white,),
                    )
                  ],),
                  ),
                )
              ],

          
            ),
          ),
          // bottom: TabBar(
          //   controller: controller,
          //   indicatorColor: Colors.white,
          //   labelColor: Colors.white,
          //   unselectedLabelColor: Colors.white,
          //   tabs: <Widget>[
          //     Tab(icon: Icon(Icons.chat),),
          //     Tab(icon: Icon(Icons.notifications),),
          //     Tab(icon: Icon(Icons.person_add),),
          //     Tab(icon: Icon(Icons.local_grocery_store),),
          //     Tab(icon: Icon(Icons.shopping_cart),),

          //   ],
          // ),
        ) ,
     bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (int index){
            setState((){
             currentTab = index;
             currentPage = pages[index];
            });

          },
          selectedItemColor: Colors.amber,
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("home"),
              ),

            BottomNavigationBarItem(
              icon:Icon(Icons.message),
              title: Text("messages"),
              ),

            BottomNavigationBarItem(
              title: Text("settings"),
              icon:Icon(Icons.settings) 
              ),

          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Image.asset("assets/coolanimal1.jpeg"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              
              ListTile(
                title: Text("Account"),
                leading: Icon(Icons.account_box),
                onTap: (){
                  Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>AccountPage()));
                },
              ),
               
               ListTile(
                title: Text("Payment"),
                leading: Icon(Icons.payment),
                onTap: (){
                  Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>PaymentPage()));
                },
              ),

              ListTile(
                title: Text("Go premium"),
                leading: Icon(Icons.update),
                onTap: (){
                  Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>PremiumPage()));
                },
              ),
             
              ListTile(
                title: Text("Calls"),
                leading: Icon(Icons.add_call),
                onTap: (){
                  Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>CallsPage()));

                },
              ),

               ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
                onTap: (){
                  Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>HelpPage()));
                },
              ),

              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.outlined_flag),
                onTap: (){
                   Navigator.pushReplacement(context,
                   new MaterialPageRoute(builder: (context)=>LoginPage()));
                },

              ),
            ],
          ),
          
        ),
    );
  }
}