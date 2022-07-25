import 'dart:html';

import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/profile',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => TimeDisp(),
      '/profile': (profile) => Profile(),
    },
  ));
}
