import 'package:flutter/material.dart';
import 'package:psychologydetector/tensorflow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'PSYCHOLOGY DETECTOR',
      home: tensorflow(), //tensorflow sınıfıma aktardım.
    );
  }
}
