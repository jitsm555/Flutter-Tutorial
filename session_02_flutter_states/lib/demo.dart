import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(home: new Scaffold(body: new Sample(),)));
}

// Stateless is the best practice when we have to show static data in the app
class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: new Text("Tech Madness")),
    );
  }
}
