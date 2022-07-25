import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = '';
  String time = '';
  String flag = '';
  String url = '';

  WorldTime({this.location: '', this.flag: '', this.url: ''});
  Map d = {};
  Future<void> getData() async {
    // fetching api.....
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    DateTime now = DateTime.parse(data['datetime']);
    now =
        now.add(Duration(hours: int.parse(data['utc_offset'].substring(1, 3))));

    //setting time.......
    time = DateFormat.jm().format(now);
  }
}
