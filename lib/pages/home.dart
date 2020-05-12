import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // passing data from previous screen
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    // set background
    String bgImage = data['isDaytime'] ? 'day' : 'night';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.blueAccent[900];

    return Scaffold(
      // SafeArea move down to prevent status bar from blocking
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time' : result['time'],
                        'location' : result['location'],
                        'isDaytime' : result['isDaytime'],
                        'flag' : result['flag'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],),
                  label: Text(
                    "Edit Location",
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontFamily: 'customFont',
                        fontSize: 28.0,
                        letterSpacing: 1.5,
                      )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66,
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
