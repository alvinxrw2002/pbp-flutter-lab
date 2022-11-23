import 'package:flutter/material.dart';
import 'dart:collection';

class Budget {
  const Budget(this.title, this.nominal, this.type);

  final String title;
  final String type;
  final int nominal;
}

class ModelBudget extends ChangeNotifier {
  final List<Budget> _budgets = [];

  UnmodifiableListView<Budget> get budgets => UnmodifiableListView(_budgets);

  void add(Budget budget) {
    _budgets.add(budget);
  }
}