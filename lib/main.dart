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
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "This is a Simple Text",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                        "Button2",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: FlatButton(onPressed: () {}, child: Text("Love me")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
