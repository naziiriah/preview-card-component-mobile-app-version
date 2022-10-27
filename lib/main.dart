// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import "package:practice_1/page/home.dart";

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    // ignore: prefer_const_literals_to_create_immutables
    routes: {
      '/home': (context) => Home(),
    },
  ));
}

//

