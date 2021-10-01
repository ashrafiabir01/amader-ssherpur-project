import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(mainapp());
}

class mainapp extends StatefulWidget {
  const mainapp({Key? key}) : super(key: key);

  @override
  _mainappState createState() => _mainappState();
}

class _mainappState extends State<mainapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
