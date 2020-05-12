import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Making A stateless Widget
    return Scaffold(
      appBar: AppBar(
        title: Text("TopAppBar"),
        centerTitle: true,
        backgroundColor: Colors.green[100],
      ),
      body:Row(
        children: <Widget>[
          Expanded(
            // Image Resizer
            flex: 2,
              child: Image.asset("assets/iloveyoupatric.jpg")
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text("3"),
            ),
          )
        ],
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text("Click"),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
