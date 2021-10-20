import 'package:flutter/material.dart';
import 'pages/converter.dart';
import 'model/style.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: corPrimaria,
        backgroundColor: corFundo,
      ),
      home: Imc(),
    );
  }
}
