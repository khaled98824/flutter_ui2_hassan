import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeH extends StatefulWidget {
  @override
  _MarqueeHState createState() => _MarqueeHState();
}

class _MarqueeHState extends State<MarqueeH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marquee'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 60,
            child: Card(
              color: Colors.grey,
              child: Marquee(
                text: 'Hello a World',
                blankSpace: 40,
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                accelerationDuration: Duration(microseconds: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
