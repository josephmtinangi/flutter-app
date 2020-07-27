import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation'),
        ),
        body: Container(),
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
