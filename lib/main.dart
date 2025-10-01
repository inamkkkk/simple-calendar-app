import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calendar/screens/calendar_screen.dart';
import 'package:simple_calendar/models/calendar_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => CalendarModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalendarScreen(),
    );
  }
}
