//named route

import 'package:kbc_game/second.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>Homepage(),
        "Secondpage":(context)=>Secondpage(),
      },
    ),
  );
}