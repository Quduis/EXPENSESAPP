import 'package:expenses_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    //here i use ListView builder becos my list length is unknown and
    // it is best practise to reduce redundancy
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(
        expenses[index].title,
      ),
    );
  }
}
