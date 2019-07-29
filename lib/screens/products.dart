import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  static String tag="show";
  
  @override
  _ProductPageState createState() => _ProductPageState();
}


class _ProductPageState extends State<ProductPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemBuilder: (context,index){
              return Padding(
                  padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Column(children: <Widget>[
                        new Text("Cool Electronics", style: TextStyle(color: Colors.brown, fontSize: 16,),),
                        new Image.asset("assets/phone4.jpeg"),
                        new Divider(),
                        new Text("Laptops" , style: TextStyle(color: Colors.brown, fontSize: 16,),),
                        new Image.asset("assets/c.jpeg"),
                        new Text("Price 35",  style: TextStyle(color: Colors.brown, fontSize: 16,),),
                        // new RaisedButton()
                      ],)
                  ),
              );
            },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: (){
            // put some logic to make it easy to get to the answer
          },
        ),
        

    );
}
}