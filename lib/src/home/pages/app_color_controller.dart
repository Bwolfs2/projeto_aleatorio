import 'package:flutter/material.dart';

class AppBarColorController extends ValueNotifier<Color> {
  AppBarColorController() : super(Colors.red);

  void changeColorAppBar() {
    value = value == Colors.amber ? Colors.red : Colors.amber;
  }
}
