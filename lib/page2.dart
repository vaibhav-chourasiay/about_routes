// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'approutes.dart';

class Page2 extends StatelessWidget {
  final data;

  const Page2({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$data"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRouts.page3, arguments: "page3");
          },
          child: const Text("page3"),
        ),
      ),
    );
  }
}
