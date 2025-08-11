import 'package:expense_tracker/Model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<expense> _registeredExpenses = [
    expense(
        date: DateTime.now(),
        title: "flutter course ",
        amount: 99,
        category: Category.work ),

    expense(
        date: DateTime.now(),
        title: "cenima ",
        amount: 99,
        category: Category.leisure )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("the chart")
        ],
      ),
    );
  }
}
