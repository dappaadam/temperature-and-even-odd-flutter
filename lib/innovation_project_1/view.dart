import 'package:flutter/material.dart';
import 'package:mobile_programming/innovation_project_1/widget/temperature.dart';
import 'package:mobile_programming/innovation_project_1/widget/odd_even_numb.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Adam Daffa'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          // color: const Color(0XFFF4F4F4),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Temperature(),
              SizedBox(height: 36),
              OddEvenNumber(),
            ],
          ),
        ),
      )),
    );
  }
}
