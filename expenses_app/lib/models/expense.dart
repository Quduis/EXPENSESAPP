import 'package:uuid/uuid.dart';

const uuid = Uuid(); // package for ID

enum Category { food, travel, leisure, work, other }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String title;
  final double amount;
  final String id;
  final DateTime date;
  final Category category;
}
