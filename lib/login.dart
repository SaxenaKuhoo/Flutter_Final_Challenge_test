// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/certify.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? name = null;
  String? _nameError = null;
  String? _emailError = null;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          title: Text("Login"),
        )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            // ignore: prefer_const_literals_to_create_immutables
            child: ListView(children: [
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLength: 20,
                controller: _nameController,
                decoration: InputDecoration(
                  errorText: _nameError,
                  labelText: "Student Name",
                  hintText: "Enter your Name",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: UnderlineInputBorder(),
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_add_alt_1_rounded,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  errorText: _emailError,
                  labelText: "E-mail Id",
                  hintText: "Enter your Email-Id",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: UnderlineInputBorder(),
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        size: 30,
                      )),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_nameController.text.length <= 1)
                        _nameError = "Enter username first";
                      else {
                        name = _nameController.text;
                      }
                      if (_emailController.text.length <= 1)
                        _nameError = "Enter email-id";
                      print(name);
                    });

                    if (_nameError == null && _emailError == null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return certify(text: _nameController.text);
                      }));
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ))
            ]),
          ),
        ));
  }
}
