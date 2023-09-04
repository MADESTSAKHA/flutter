import 'package:flutter/material.dart';

class AreaOfARectangle extends StatefulWidget {
  const AreaOfARectangle({super.key});

  @override
  AreaOfARectangleState createState() => AreaOfARectangleState();
}

class AreaOfARectangleState extends State<AreaOfARectangle> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Input Text"),
            backgroundColor: Colors.deepOrange),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              TextField(
                  decoration: const InputDecoration(hintText: "Type in here"),
                  //onChanged is called whenever we add or delete something on Text Field
                  onChanged: (String str) {
                    setState(() {
                      result = str;
                    });
                  }),
              //displaying input text
              Text(result)
            ])));
  }
}
