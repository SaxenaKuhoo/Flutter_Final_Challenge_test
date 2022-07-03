// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class certify extends StatefulWidget {
  const certify({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<certify> createState() => _certifyState();
}

class _certifyState extends State<certify> {
  // DateTime now = DateTime.now();
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final String text = "";
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            color: Colors.black12,
            child: Text(
              "Status Bar",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Hi ${widget.title}",
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Image(
            image: NetworkImage(
              'https://i.ytimg.com/vi/KDqoYyCeQ3I/maxresdefault.jpg',
            ),
            // width: 250,
            height: 300,
          ),
          Text(
            "You have Successfully completed Hybrid Modile App Development Course \n\nInstructor Name: \nPankaj Kapoor\n\n",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            child: Text(
              "$date",
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      )),
    );
  }
}
