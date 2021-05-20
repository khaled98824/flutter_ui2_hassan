import 'dart:math';

import 'package:flutter/material.dart';

class SliderLine extends StatefulWidget {
  @override
  _SliderLineState createState() => _SliderLineState();
}

class _SliderLineState extends State<SliderLine> {
  double _val = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: 30,
          ),
          Text('Value ${(_val.round())}'),
          Slider(
            value: _val,
            onChanged: (double val) => setState(() => _val = val),
            min: 0,
            max: 180,
            divisions: 100,
            label: 'Value',
            activeColor: Colors.red,
            inactiveColor: Colors.green,
          )
        ],
      ),
    );
  }

  Container buildContainer_TransformMatrex4_rotate() {
    return Container(
          width: 300,
          transform: Matrix4.rotationZ(_val),

          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepOrangeAccent,
              boxShadow: [
                BoxShadow(
                  blurRadius: 68,
                  color: Colors.blue,
                  offset: Offset(0, 2),
                ),
              ]),
          child: Text(
            'My Store',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        );
  }

  Container buildContainer_Transform_Matrex4_Translate() {
    return Container(
      width: 300,
      transform: Matrix4.rotationZ(-20 * (pi / 180))..translate(0.0, _val, 0),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepOrangeAccent,
          boxShadow: [
            BoxShadow(
              blurRadius: 68,
              color: Colors.blue,
              offset: Offset(0, 2),
            ),
          ]),
      child: Text(
        'My Store',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Transform buildTransform() {
    return Transform.translate(
      offset: Offset(_val, _val),
      child: Container(
        color: Colors.amber,
        width: 200,
        height: 200,
      ),
    );
  }

  Transform buildTransformRotate() {
    return Transform.rotate(
      angle: _val * (pi / 180),
      child: Container(
        color: Colors.amber,
        width: 200,
        height: 200,
      ),
    );
  }
}
