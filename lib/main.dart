import 'package:flutter/material.dart';
import 'package:TheTimeApp/pages/home.dart';
import 'package:TheTimeApp/pages/loading.dart';
import 'package:TheTimeApp/pages/profile.dart';
import 'package:TheTimeApp/pages/choose_location.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/profile': (context) => Profile(),
    }));
