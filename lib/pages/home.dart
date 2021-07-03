import 'package:flutter/material.dart';
import 'package:wyser/components/dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(0),
          padding: EdgeInsets.only(top: height * .15),
          child: const Dashboard(),
        ));
  }
}
