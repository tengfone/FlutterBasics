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
      body: Center(
//        // Icon Button
//        child: IconButton(
//          onPressed: (){},
//          icon: Icon(Icons.alternate_email),
//          color: Colors.amber,
//        )
//        // Raise button with icon
//        child: RaisedButton.icon(
//          onPressed: (){
//            print("Button Pressed");
//          },
//          icon: Icon(
//            Icons.wifi
//          ),
//          label: Text("Wifi Toggled"),
//          color: Colors.amber,
//        )
//        // Icons
//        child: Icon(
//          Icons.wifi,
//          color: Colors.blue,
//          size: 300.0,
//        )
//        // Images (work for URL too [Image.network])
//        child: Image.asset('assets/iloveyoupatric.jpg'),
        // Body Texts
        child: Text(
          "Hello World!",style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'customFont',
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text("Click"),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
