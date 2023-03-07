import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_generator/widgets/randomizer_change_notifier.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
      ),
      body: Center(child: Consumer<RandomizerChangeNotifier>(
        builder: (context, notifier, child) {
          return Text(
            notifier.generatedNumber?.toString() ??
                "Click the button to generate your number.",
            style: const TextStyle(fontSize: 17),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
