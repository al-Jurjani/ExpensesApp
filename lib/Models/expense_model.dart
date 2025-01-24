import 'package:uuid/uuid.dart';

// third party package used for creating unique IDs
const uuid = Uuid();

// types of expenses
enum Category { food, travel, leisure, work }

class ExpenseModel {
  ExpenseModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
