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
          title: Text("Sample App",style: TextStyle(
            fontSize: 16.0
          ),),

        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){},
            textColor: Colors.white,
            color: Colors.blue,
            elevation: 10.0,
            shape: Border.all(width: 2.0,color: Colors.black),
            highlightElevation: 30,
            highlightColor: Colors.deepOrange,
            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
            child: Text(
              "Raised Button",
              style: TextStyle(fontSize: 20.0),
            ),

          )
        ),
      ),
    );
  }
}
