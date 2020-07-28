import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: <Widget>[Text('Company')],
                ),
              ),
              ListTile(
                selected: _selected == 0,
                leading: Icon(Icons.folder),
                title: Text('My Files'),
                onTap: () {
                  changeSelection(0);
                },
              ),
              ListTile(
                selected: _selected == 1,
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {
                  changeSelection(1);
                },
              ),
              ListTile(
                selected: _selected == 2,
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  changeSelection(2);
                },
              )
            ],
          ),
        ),
        body: Container(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void changeSelection(int index) {
    setState(() {
      _selected = index;
    });
  }
}
