import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_app_my/config/config.dart';
import 'package:flutter_riverpod_todo_app_my/screens/home_screen.dart';
import 'package:flutter_riverpod_todo_app_my/config/config.dart';
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: Scaffold(
        body:HomeScreen(),
      ),
    );
  }
}
