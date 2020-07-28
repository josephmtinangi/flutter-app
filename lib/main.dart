import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linear Progress Indicator'),
        ),
        body: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _progress = 0.2;
              });
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Colors.deepPurple,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                )
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              LinearProgressIndicator(
                value: _progress,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.lerp(Colors.yellow, Colors.pink, _progress),
                ),
                backgroundColor: Colors.white,
              ),
              Text((_progress * 100).toStringAsFixed(0) + '%')
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
