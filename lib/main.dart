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
      title: "Calculator App",
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
  int firstNum=0;
  int secondNum=0;
  String display="";
  String res="";
  String operator="";

  void btnClicked(String v)
  {
    if(v=="C")
      {
        display="";
        firstNum=0;
        secondNum=0;
        res="";

      }
    else if(v=="+"||v=="-"||v=="/"||v=="x")
      {
        firstNum=int.parse(display);
        res="";
        operator=v;
      }
    else if (v=="=")
      {
        secondNum=int.parse(display);
        if(operator=="+")
          {
            res=(firstNum+secondNum).toString();
          }
        if(operator=="-")
        {
          res=(firstNum-secondNum).toString();
        }
        if(operator=="x")
        {
          res=(firstNum*secondNum).toString();
        }
        if(operator=="/")
        {
          res=(firstNum/secondNum).toString();
        }
      }
    else
      {
        res=int.parse(display+v).toString();
      }
    setState(() {
      display=res;
    });
  }


  Widget custombutton(String val) {
    return Expanded(
        child: OutlinedButton(
      onPressed: () => btnClicked(val),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          "$val",
          style: TextStyle(fontSize: 22),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20,right: 20),
                child: Text(
                  "$display",
                  style: TextStyle(fontSize: 40, fontFamily: "Cursive"),
                ),
              ),
            )),
            Row(
              children: [
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("+"),
              ],
            ),
            Row(
              children: [
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("-"),
              ],
            ),
            Row(
              children: [
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("x"),
              ],
            ),
            Row(
              children: [
                custombutton("C"),
                custombutton("0"),
                custombutton("="),
                custombutton("/"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
