import 'package:expenses_app/widgets/expenses_list/expenses_list.dart';
import 'package:expenses_app/models/expense.dart';
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
      title: 'Porn',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Books',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.other,
    ),
    Expense(
      title: 'Bill',
      amount: 200.00,
      date: DateTime.now(),
      category: Category.other,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arial Track'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          Text('Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
