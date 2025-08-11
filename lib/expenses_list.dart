import 'package:expense_tracker/Model/expense.dart';
import 'package:flutter/cupertino.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cxt, index) => Text(expenses[index].title),
    );
  }
}
