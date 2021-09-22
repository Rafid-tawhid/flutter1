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
          child: MaterialButton(
            onPressed: (){},
            splashColor: Colors.blue,
            height: 40,
            minWidth: 200,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
            shape: Border.all(color: Colors.green,width: 3),
            child: Text("Material Button",style: TextStyle(fontSize: 20,color: Colors.red),),
            color: Colors.white,
            
          )
        ),
      ),
    );
  }
}
