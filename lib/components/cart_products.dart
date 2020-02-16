import 'package:flutter/material.dart';
class Cart_Products extends StatefulWidget {
  final c_p_pic;
  final c_p_name;
  final c_p_price;


  Cart_Products(this.c_p_pic, this.c_p_name, this.c_p_price);

  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart=[
    {
      "name": "Blazer1",
      "picture": "images/download.png",
      "price": "₹2500",
      "Quantity" :1
    },
    {
      "name": "Blazer2",
      "picture": "images/download (1).png",
      "price": "₹2600",
      "Quantity" :2
    },
    {
      "name": "Blazer3",
      "picture": "images/download (2).png",
      "price": "₹2400",
      "Quantity" :3
    },
    {
      "name": "Blazer4",
      "picture": "images/download (4).png",
      "price": "₹2300",
      "Quantity" :4
    },
    {
      "name": "Blazer5",
      "picture": "images/download (4).png",
      "price": "₹2200",
      "Quantity" :5
    },
    {
      "name": "Blazer6",
      "picture": "images/download (4).png",
      "price": "₹2000",
      "Quantity" :6
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
        itemBuilder: (context,index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_qty: Products_on_the_cart[index]["Quantity"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );

        });
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;


  Single_cart_product({
      this.cart_prod_name, this.cart_prod_picture,
      this.cart_prod_price, this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:ListTile(
        leading: new Image.asset(cart_prod_picture,width:100.0,height:100.0),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Quantity"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:new Text("$cart_prod_qty"),
                ),


              ],

            ),
            new Container(
              alignment: Alignment.topLeft,
              child:new Text("${cart_prod_price}",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            )

          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
    );
  }

}

