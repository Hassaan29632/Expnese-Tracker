import 'package:expense_tracker/Model/expense.dart';
import 'package:expense_tracker/widgets/expenses%20list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      date: DateTime.now(),
      title: "flutter course ",
      amount: 99,
      category: Category.work,
    ),

    Expense(
      date: DateTime.now(),
      title: "cenima ",
      amount: 99,
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOvelay() {
    showModalBottomSheet(
        context: context, builder: (ctx) =>  Text("enter data here"),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(onPressed: _openAddExpenseOvelay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Text("the chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
