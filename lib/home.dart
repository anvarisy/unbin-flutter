import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }

}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.home),
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.attach_money_rounded), onPressed: ()=>{
            //TODO when it pressed
          }),
          IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: ()=>{
            //TODO when it pressed
          }),
          PopupMenuButton(itemBuilder: (BuildContext ctx){
            return[
              PopupMenuItem(child: Text("Order")),
              PopupMenuItem(child: Text("History")),
              PopupMenuItem(child: Text("Whitelist")),
              PopupMenuItem(child: Text("Balance"))
            ];
          })
        ],
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }

}