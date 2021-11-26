// ignore_for_file: dead_code, prefer_const_constructors

import 'package:aboutroutes/page2.dart';
import 'package:flutter/material.dart';

import 'approutes.dart';
import 'page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // here i give initial route name for approutes
      initialRoute: MyRouts.home,
      routes: {
        // if this route name come in Naviagor then go HomePage
        // we only pass satitc values here
        MyRouts.home: (context) => const HomePage(),
      },
      // here we can generate new routes with dynamic arrgument that can declear
      // in Navigators arrgument .so we can pass values without delclearing routes in routes
      // it help us to create new anchar point with arrgument for next anchor

      onGenerateRoute: (RouteSettings setting) {
        //here we are checking if the given route is in Myroutes or not
        switch (setting.name) {
          case MyRouts.page2:
            var page = MaterialPageRoute(
              builder: (context) => Page2(
                data: setting.arguments,
              ),
            );
            // here we are returning page with required arrgument for next.
            return page;
            break;
          case MyRouts.page3:
            var page = MaterialPageRoute(
              builder: (context) => Page3(
                data: setting.arguments,
              ),
            );
            return page;
        }
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRouts.page2, arguments: "page2");
          },
          child: Text("page2"),
        ),
      ),
    );
  }
}
