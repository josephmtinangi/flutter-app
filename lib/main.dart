import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  bool isRedSelected = false;
  bool isBlueSelected = false;
  bool isPinkSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Filterchip'),
        ),
        body: Wrap(
          spacing: 5.0,
          children: <Widget>[
            FilterChip(
              checkmarkColor: Colors.white,
              selected: isRedSelected,
              selectedColor: Colors.purple,
              backgroundColor: Colors.grey,
              labelStyle: TextStyle(color: Colors.white),
              label: Text('red'),
              onSelected: (value) {
                setState(() {
                  isRedSelected = value;
                });
              },
            ),
            FilterChip(
              checkmarkColor: Colors.white,
              selected: isBlueSelected,
              selectedColor: Colors.blue,
              backgroundColor: Colors.grey,
              labelStyle: TextStyle(color: Colors.white),
              label: Text('blue'),
              onSelected: (value) {
                setState(() {
                  isBlueSelected = value;
                });
              },
            ),
            FilterChip(
              checkmarkColor: Colors.white,
              selected: isPinkSelected,
              selectedColor: Colors.pink,
              backgroundColor: Colors.grey,
              labelStyle: TextStyle(color: Colors.white),
              label: Text('pink'),
              onSelected: (value) {
                setState(() {
                  isPinkSelected = value;
                });
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          backgroundColor: Colors.white,
          currentIndex: index,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.network_wifi), title: Text('Feed')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Settings'))
          ],
          onTap: (int selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
