import 'package:flutter/material.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';
// import 'pages/home.dart';

void main() => runApp(MaterialApp(
  // initial Route bypasses routes to set it as the first page when loaded
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  },
));

