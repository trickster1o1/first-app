import 'package:flutter/material.dart';

class TimeDisp extends StatefulWidget {
  @override
  State<TimeDisp> createState() => _TimeDispState();
}

class _TimeDispState extends State<TimeDisp> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('The Time'),
      ),
    );
  }
}
