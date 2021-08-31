import 'dart:math';

import 'package:autoroutetrial/routes/app_router.gr.dart';
import 'package:autoroutetrial/screens/today/expense_detail.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<int> amounts = [];

  @override
  void initState() {
    super.initState();
    amounts = List.generate(20, (index) => Random().nextInt(100));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Expenses'),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: amounts.length,
              itemBuilder: (context, index) {
                final amount = amounts[index];
                return ListTile(
                  title: Text('Expense $index'),
                  subtitle: Text('Amount: \$$amount.00'),
                  onTap: () => context.pushRoute(
                    ExpenseDetailRouterFullScreen(
                      expenseId: index.toString(),
                      amount: amount,
                    ),
                  ),
                  // onTap: () => context.router.pushNamed('details/$index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
