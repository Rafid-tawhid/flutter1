import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample app",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sample App",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is Text",
                style: TextStyle(fontSize: 24),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Button2 ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Button3",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
