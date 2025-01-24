import 'package:flutter/material.dart';

// main screen of app
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("The Chart!"),
          Text("Expenses List!"),
        ],
      ),
    );
  }
}
