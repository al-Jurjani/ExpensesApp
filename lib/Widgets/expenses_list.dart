import 'package:expense_tracker_app/Models/expense_model.dart';
import 'package:expense_tracker_app/Widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => ExpenseItem(expense: expenses[index]));
  }
}
