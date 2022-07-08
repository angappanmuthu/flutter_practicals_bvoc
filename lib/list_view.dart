import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
              title: Text("List Item 1"),
            )),
            Card(
              child: ListTile(
                title: Text("List Item 2"),
              ),
            ),
            Card(
                child: ListTile(
              title: Text("List Item 3"),
            )),
          ],
          shrinkWrap: true,
        ));
  }
}
