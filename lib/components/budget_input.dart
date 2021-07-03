import 'package:flutter/material.dart';

class BudgetInput extends StatelessWidget {
  const BudgetInput({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        TextFormField(controller: null),
      ]),
    ));
  }
}
