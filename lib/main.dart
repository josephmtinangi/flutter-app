import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // hold the future
  Future<bool> completed;

  // hold the data
  String _receivedData;

  @override
  void initState() {
    print('initState');

    super.initState();

    completed = loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Future Builder'),
        ),
        body: Center(
            child: FutureBuilder(
                future: completed,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(_receivedData);
                  } else {
                    return CircularProgressIndicator();
                  }
                })),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Future<bool> loadData() async {
    print('Start');
    // dummy loading
    // creates delay of 3 seconds
    await Future.delayed(Duration(seconds: 5));
    _receivedData = 'Data Received';
    print('Done');
    return true;
  }
}
