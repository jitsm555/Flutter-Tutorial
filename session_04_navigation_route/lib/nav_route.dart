import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    SecondScreen.tag:(context) => SecondScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Routes",
      home: new FirstScreen(),
      routes: routes,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("First Widget"),
      ),
      body: RaisedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
//        Navigator.of(context).pushNamed(SecondScreen.tag);
      },
      child: Text("Go to second screen"),),
    );
  }
}


class SecondScreen extends StatelessWidget {
  static String tag = "second_widget";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Second Widget"),
      ),
      body: RaisedButton(onPressed: () {
        Navigator.pop(context);
      },
        child: Text("Go Back"),),
    );
  }
}


