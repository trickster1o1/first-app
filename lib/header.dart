import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return
        //  AppBar(
        //   title:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Icon(Icons.notifications)),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Icon(Icons.person)),
        ]);
    //   backgroundColor: Colors.grey[850],
    // );
  }
}
