import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IDCard(),
));

class IDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/iloveyoupatric.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blue[800],
              thickness: 3.0,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing:  2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
                "TengFone",
                style: TextStyle(
                  color: Colors.amberAccent[100],
                  letterSpacing:  2.0,
                  fontFamily: 'customFont',
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 30.0),
            Text(
                "Phone Number",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing:  2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
              "XXXX XXXX",
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing:  2.0,
                fontFamily: 'customFont',
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "randomEmail@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
