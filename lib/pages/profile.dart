import 'package:flutter/material.dart';
import 'package:world_time_app/header.dart';
import '../list.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int c = 0;

  List<WorkList> works = [
    WorkList(work: 'App Development', time: '1 Months'),
    WorkList(work: 'Site Development', time: '3 Months'),
    WorkList(work: 'Quality Assurance', time: '1 Day'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Header(),
        backgroundColor: Colors.grey[850],
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.grey,
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nischal Tuladhar',
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Post',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Fullstack Developer',
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Stars',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$c',
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[100],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'nischaltuladhar15@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              Divider(
                height: 20.0,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Work',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    'Time',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    'Action',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20.0,
                color: Colors.grey,
              ),
              Column(
                children: works
                    .map((w) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              w.work,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              w.time,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  works.remove(w);
                                });
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ))
                    .toList(),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            c += 1;
          });
        },
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}
