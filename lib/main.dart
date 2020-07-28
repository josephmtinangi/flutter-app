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
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('My TabBar'),
              bottom: TabBar(tabs: <Widget>[
                Tab(text: 'Yellow'),
                Tab(text: 'Orange'),
                Tab(text: 'Red')
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.red)
            ]),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
