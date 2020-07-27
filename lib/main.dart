import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  String _value = 'red';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Filterchip'),
        ),
        body: Container(
          height: 60.0,
          width: 200.0,
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: DropdownButton(
              isExpanded: true,
              icon: Icon(Icons.add),
              underline: SizedBox(),
              value: _value,
              items: <String>['red', 'blue', 'green']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                print(newValue);
                setState(() {
                  _value = newValue;
                });
              }),
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
