import 'package:expenses_app/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Expenses(),
        ),
      ),
    ),
  );
}
