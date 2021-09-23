import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: "Material App",
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("Starteed Splash Screen");
    Timer(Duration(seconds: 5),finished);
  }

  void finished()
  {
    debugPrint("Finished");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Splash\nScreen",style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: "Cursive"),),

            ],
          )
        ],
      ),
    );
  }
}



