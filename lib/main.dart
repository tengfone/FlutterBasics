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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("This Is A Row Text"),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Text("Container 1"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green,
            child: Text("Container 2"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.red,
            child: Text("Container 3"),
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
