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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Hello World"),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child:Text("Button"),),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("In Container"),
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
