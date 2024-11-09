import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  late final TextEditingController _controller;
  double? celcius;
  double? fahrenheit;

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
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            labelText: 'Celcius to Fahrenheit',
            hintText: 'Input temperature',
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            setState(() {
              celcius = double.parse(_controller.text);
              fahrenheit = celcius! * 9 / 5 + 32;
            });
          },
          child: const Text('Convert'),
        ),
        const SizedBox(height: 16),
        const Text('Result'),
        const SizedBox(height: 8),
        _controller.text.isEmpty || fahrenheit == null
            ? const Text('............')
            : Text(
                '$fahrenheit Fahrenheit',
              ),
      ],
    );
  }
}
