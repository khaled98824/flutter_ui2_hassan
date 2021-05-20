import 'package:flutter/material.dart';
import 'package:flutter_ui2_hassan/imagePicker.dart';
import 'package:flutter_ui2_hassan/marquee.dart';
import 'package:flutter_ui2_hassan/slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePick(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI2'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
