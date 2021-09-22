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
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.add_a_photo
            ),
            iconSize: 50.0,
            splashColor: Colors.blue,
            tooltip: "Add a Photo",
          )
        ),
      ),
    );
  }
}
