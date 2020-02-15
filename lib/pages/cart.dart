import 'package:flutter/material.dart';
class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,

        backgroundColor: Color(0xff104670), //CHECK COLOR CODE
        title: Text("Shopping Cart"),

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,color: Colors.white,
              ),
              onPressed: (){}),

        ],
      ),
      bottomNavigationBar: new Container(
        color:Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child:ListTile(
              title: new Text("Total Amount:"),
              subtitle: new Text("₹2000"),
            )),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child:new Text("Check Out",style:TextStyle(color: Colors.white)),
              color: Colors.redAccent),
            )
          ],
        ),
      ),
    );
  }
}
