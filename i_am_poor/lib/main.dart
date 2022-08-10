import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text('I am Poor!'),
          ),
          backgroundColor: Colors.brown[800],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/poor.png'),
            //https://icons8.com/illustrations/illustration/papery-purse
            width: 500.0,
          ),
        ),
      ),
    ),
  );
}
