// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShpwCheckedModeBanner:
    false;
    return Scaffold(
        appBar: AppBar(
          title: Text("Get Started"),
        ),
        body: SafeArea(
          child: Center(
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "Training",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3z2D2yEmYk4E6F730lXp-4dgcHMUYWnJBig&usqp=CAU'),
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return login();
                          }));
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                  ),
                ]),
          ),
        ));
  }
}
