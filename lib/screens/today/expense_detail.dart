import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ExpenseDetail extends StatelessWidget {
  const ExpenseDetail(
      {Key? key, @PathParam('expenseId') this.expenseId, @required this.amount})
      : super(key: key);
  final String? expenseId;
  final int? amount;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expense $expenseId'),
        ),
        body: Center(child: Text('Amount: \$$amount.00')));
  }
}
