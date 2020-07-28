import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient'),
        ),
        body: Center(
          child: Container(
            height: 120.0,
            width: 200.0,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.lightBlue, Colors.blue],
                    center: Alignment.center,
                    radius: 1.0)),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
