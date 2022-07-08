import 'package:flutter/material.dart';

// function to start app building
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root
// of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Insert Image Demo',
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/Alagappa_University_Logo.png',
                  height: 200,
                  scale: 2.5,
                  // color: Color.fromARGB(255, 15, 147, 59),
                  opacity:
                      const AlwaysStoppedAnimation<double>(0.5)), //Image.asset
              Image.asset(
                'assets/Alagappa_University_Logo.png',
                height: 400,
                width: 400,
              ), // Image.asset
            ], //<Widget>[]
          ), //Column
        ), //Center
      ),
    );
  }
}
