import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:TheTimeApp/header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    return Scaffold(
      // backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Header(),
        backgroundColor: Colors.grey[850],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data['isDay'] ? '/day.jpg' : '/night.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'location': result['location'],
                        'time': result['time'],
                        'isDay': result['isDay'],
                        'url': result['url'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  )),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data.isNotEmpty && data['location'] != null
                            ? data['location']
                            : 'loading...',
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 5.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        data.isNotEmpty && data['time'] != null
                            ? data['time']
                            : 'loading...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
