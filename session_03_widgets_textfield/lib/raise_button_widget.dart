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
    return Container(
      alignment: Alignment.center,
        child: new SizedBox(
      child: FloatingActionButton(
          backgroundColor: Colors.red,
          child: null,
          onPressed: () {
            print("jitesh");
          },)
    ));
  }
}
