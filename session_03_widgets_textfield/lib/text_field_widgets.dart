import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Text Field Widget",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("TextField Examples"),
      ),
      body: new TextFieldExample(),
    ),
  ));
}

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();
    TextField field = new TextField(
      controller: controller,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      maxLength: 4,
      decoration: new InputDecoration(
          labelText: "UserName",
          hintText: "Enter UserName",
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 0, end: 10),
            child: Icon(Icons.supervised_user_circle), // myIcon is a 48px-wide widget.
          )),
      onEditingComplete: () {
        print("Pressed done button");
      },
//      onChanged: (String value) {
//        print(value);
//      },
    );
    controller.addListener(() {
      print("addListener:" + controller.text);
    });

    return Container(
      child: field,
    );
  }
}
