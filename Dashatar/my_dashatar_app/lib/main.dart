// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          // backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("My Dashatar App"),
        ),
        body: Stack(children: [
          Container(
              height: 100.0,
              width: 100.0,
              color: Colors.teal,
              child: Image.asset("images/myDashatar.png")),
          Positioned(
            left: 10.0,
            child: Container(
                height: 50.0,
                width: 50.0,
                color: Colors.brown,
                child: Image.asset("images/myDashatar.png")),
          ),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.red,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.teal,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.brown,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.red,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.teal,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.brown,
          //     child: Image.asset("images/myDashatar.png")),
          // Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.red,
          //     child: Image.asset("images/myDashatar.png")),
        ]),
      ),
    );
  }
}
