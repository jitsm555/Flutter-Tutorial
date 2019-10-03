import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Custom Material Color",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Material Color Example"),
      ),
      body: new CustomMaterialColor(),
    ),
  ));
}

class CustomMaterialColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> colorCodes = {
      50: Color.fromRGBO(147, 205, 72, .1),
      100: Color.fromRGBO(147, 205, 72, .2),
      200: Color.fromRGBO(147, 205, 72, .3),
      300: Color.fromRGBO(147, 205, 72, .4),
      400: Color.fromRGBO(147, 205, 72, .5),
      500: Color.fromRGBO(147, 205, 72, .6),
      600: Color.fromRGBO(147, 205, 72, .7),
      700: Color.fromRGBO(147, 205, 72, .8),
      800: Color.fromRGBO(147, 205, 72, .9),
      900: Color.fromRGBO(147, 205, 72, 1),
    };

    MaterialColor color = new MaterialColor(0xFF93cd48, colorCodes);

    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          color: color[400],
          child: new Text("Color"),
        ),
      ),
    );
  }
}
