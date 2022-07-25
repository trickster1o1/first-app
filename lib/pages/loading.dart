import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:myapp/api/dateTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupTime() async {
    WorldTime configTime = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await configTime.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': configTime.location,
      'flag': configTime.flag,
      'time': configTime.time
    });
  }

  @override
  void initState() {
    super.initState();

    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
