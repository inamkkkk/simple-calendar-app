import 'package:flutter/material.dart';

class CalendarModel extends ChangeNotifier {
  DateTime _currentDate = DateTime.now();

  DateTime get currentDate => _currentDate;

  int get daysInMonth => DateTime(_currentDate.year, _currentDate.month + 1, 0).day;

  void nextMonth() {
    _currentDate = DateTime(_currentDate.year, _currentDate.month + 1);
    notifyListeners();
  }

  void previousMonth() {
    _currentDate = DateTime(_currentDate.year, _currentDate.month - 1);
    notifyListeners();
  }
}
