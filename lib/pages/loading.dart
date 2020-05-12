import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading...';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: "Singapore", flag: 'sg.jpg', url: "Asia/Singapore");
    await instance.getTime();
    // Remove loading stack
    Navigator.pushReplacementNamed(context, '/home', arguments:{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SpinKitPulse(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
