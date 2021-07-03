import 'package:flutter/material.dart';
import 'package:wyser/components/budget_input.dart';

class MyBudgetPage extends StatelessWidget {
  const MyBudgetPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.only(top: 0),
          child: const BudgetInput(),
        ));
  }
}
