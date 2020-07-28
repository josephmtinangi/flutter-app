import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String _title = 'My todo';
  String _subtitle = 'Subtitle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Request'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text(_title),
              subtitle: Text('completed: $_subtitle'),
            ),
            RaisedButton(
              child: Text(
                'Get Data',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                makeRequest();
              },
              color: Colors.red,
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void makeRequest() async {
    String _url = 'https://jsonplaceholder.typicode.com/todos';
    print('url');
    print(_url);

    var response = await http.get(_url);
    print('response');
    print(response);
    String dataAsString = response.body;
    print('dataAsString');
    print(dataAsString);
    List decodedData = json.decode(dataAsString);
    print('decodedData');
    print(decodedData);

    Map<String, dynamic> firstToDo = decodedData[0];

    setState(() {
      _title = firstToDo['title'];
      _subtitle = firstToDo['completed'].toString();
    });
  }
}
