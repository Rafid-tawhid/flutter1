import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Fields',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String myvar="Default";
  String show="Default";
  void showText()
  {
    setState(() {
      show=myvar;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("$show"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (text) {
                myvar = text;
              },
              maxLength: 18,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_balance,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                  )),
              style: TextStyle(
                color: Colors.red,
                fontSize: 18.0,
              ),
            ),
          ),
          RaisedButton(onPressed: showText,
          child: Text(
            "Press ",
          ),)
        ],
      ),
    );
  }
}
