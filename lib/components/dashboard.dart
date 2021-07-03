import 'package:flutter/material.dart';
import 'package:wyser/components/balance_output.dart';
import 'package:wyser/pages/my_budget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'My Pocket Wallet',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        const SizedBox(height: 10),
        Text(
          '\$' + totalAvailableBalance(),
          style: const TextStyle(color: Colors.white, fontSize: 50.0),
        ),
        const SizedBox(height: 10),
        Text(
          '~' + dailyAvailableBalance() + '\$/day',
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.orangeAccent),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyBudgetPage()));
          },
          child: const Text(
            'See my budget',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ],
    );
  }

  totalAvailableBalance() {
    BalanceOutput balanceOutput = BalanceOutput();
    return (balanceOutput.balanceOutput).toString();
  }

  dailyAvailableBalance() {
    BalanceOutput balanceCurrentMonth = BalanceOutput();
    return (balanceCurrentMonth.balanceCurrentMonth).toString();
  }
}
