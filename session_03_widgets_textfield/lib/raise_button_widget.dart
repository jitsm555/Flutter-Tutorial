import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Raise Button Widget",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("TextField Examples"),
      ),
      body: new RaiseButtonExample(),
    ),
  ));
}

class RaiseButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton button = new RaisedButton(onPressed: () {
       // TODO: perform any click operation here
      print("Button Clicked");
    },
    child: new Text("Button", style: TextStyle(fontSize: 80),),
    color: Colors.red,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),);

    return Container(
      alignment: Alignment.center,
      child: button,
    );
  }
}


