import 'package:flutter/material.dart';

import 'src/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Project',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}
