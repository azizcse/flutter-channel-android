import 'dart:async';

import 'package:flutter/material.dart';
class UsingStreamBuilder extends StatefulWidget{
  @override
  State<UsingStreamBuilder> createState() {
    return _UsingStreamBuilder();
  }

}
class _UsingStreamBuilder extends State<UsingStreamBuilder> {
  Stream<int> timedCounter(Duration interval, [int maxCount]) async* {
    int i = 0;
    while (true) {
      await Future.delayed(interval);
      yield i++;
      if (i == maxCount) break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StreamBuilder in Flutter")),
      body: Center(
        child: StreamBuilder<int>(
          stream: timedCounter(Duration(seconds: 2), 10),
          //print an integer every 2secs, 10 times
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text("No data");
            }
            return Text("${snapshot.data.toString()}",
                style: TextStyle(fontSize: 20));
          },
        ),
      ),
    );
  }
}