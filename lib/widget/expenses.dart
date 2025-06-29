import 'package:flutter/material.dart';
import 'package:track_expense/models/expense.dart';
import 'package:track_expense/widget/expense_list/expenses_list.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
      title: 'flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 10.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpense)),
        ],
      ),
    );
  }
}
