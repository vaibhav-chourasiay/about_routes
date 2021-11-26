// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'approutes.dart';

class Page3 extends StatelessWidget {
  final data;

  const Page3({Key? key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$data"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRouts.home);
          },
          child: Text("home"),
        ),
      ),
    );
  }
}
