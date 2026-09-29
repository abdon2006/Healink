import 'package:flutter/material.dart';

void main() {
  runApp(Healink());
}

class Healink extends StatelessWidget {
  const Healink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('welcome')));
  }
}
