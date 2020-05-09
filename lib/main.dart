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
      body: Container(
        // padding is inside the container
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30, 40),
        // margin is around the container
        margin: EdgeInsets.all(30.0),
        // padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        color: Colors.grey[300],
        child: Text("Hello World"),
      ),
//      // Use Padding widget when you only want to pad stuff. Use container if
//      // you want to use margin
//      body: Padding(
//        padding: EdgeInsets.all(30.0),
//        child: Text("Hello World!")
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text("Click"),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
