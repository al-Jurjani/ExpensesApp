import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

// third party package used for creating unique IDs
const uuid = Uuid();

// Used to extract formatted String from date variable - from intl package
final formatter = DateFormat.yMd();

// types of expenses
enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.gamepad_rounded,
  Category.work: Icons.work
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
