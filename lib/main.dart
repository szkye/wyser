import 'package:wyser/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Wyser());
}

class Wyser extends StatelessWidget {
  const Wyser({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
