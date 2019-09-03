import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    SecondWidget.tag:(context) => SecondWidget(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Routes",
      home: new FirstWidget(),
      routes: routes,
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("First Widget"),
      ),
      body: RaisedButton(onPressed: () {
//        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondWidget()));
          Navigator.of(context).pushNamed(SecondWidget.tag);
      },
      child: Text("Navigate"),),
    );
  }
}


class SecondWidget extends StatelessWidget {
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


