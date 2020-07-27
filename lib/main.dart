import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> myList = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Builder'),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(10.0),
            reverse: false,
            scrollDirection: Axis.vertical,
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100.0,
                child: Center(
                  child: Text(myList[index]),
                ),
              );
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
