class BalanceOutput {
  double balanceOutput = 0;
  double daysThisMonth = 31;
  double dailyBalance = 0;

  double get walletBalance {
    return balanceOutput;
  }

  set walletBalance(double walletBalance) {
    balanceOutput = walletBalance;
  }

  set dayCurrentMonth(double days) {
    daysThisMonth = days;
  }

  set balanceCurrentMonth(double balanceCurrentMonth) {
    dailyBalance = balanceCurrentMonth;
  }

  double get balanceCurrentMonth {
    dailyBalance = balanceOutput / daysThisMonth;
    return dailyBalance.roundToDouble();
  }
}
