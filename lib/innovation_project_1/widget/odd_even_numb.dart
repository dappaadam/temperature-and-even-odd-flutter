import 'package:flutter/material.dart';

class OddEvenNumber extends StatefulWidget {
  const OddEvenNumber({super.key});

  @override
  State<OddEvenNumber> createState() => _OddEvenNumberState();
}

class _OddEvenNumberState extends State<OddEvenNumber> {
  late final TextEditingController _controller;
  String? result;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
          decoration: const InputDecoration(
            labelText: 'Odd or Even Number Checker',
            hintText: 'Input number',
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            setState(() {
              final int number = int.parse(_controller.text);
              if (number % 2 == 0) {
                result = 'The number of $number is even';
              } else {
                result = 'The number of $number is odd';
              }
            });
          },
          child: const Text('Check'),
        ),
        const SizedBox(height: 16),
        const Text('Result'),
        const SizedBox(height: 8),
        _controller.text.isEmpty
            ? const Text('The number of ... is ...')
            : Text(
                result!,
              ),
      ],
    );
  }
}
