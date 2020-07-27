import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Color bulbColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gesture Detector'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                bulbColor = Colors.red;
              });
            },
            onDoubleTap: () {
              setState(() {
                bulbColor = Colors.grey;
              });
            },
            child: Icon(
              Icons.lightbulb_outline,
              size: 100.0,
              color: bulbColor,
            ),
          ),
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
