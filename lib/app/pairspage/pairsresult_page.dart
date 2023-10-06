import 'package:flutter/material.dart';

class PairsResultPage extends StatelessWidget {
  const PairsResultPage({
    Key? key,
    required this.names,
  }) : super(key: key);

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    final List<List<String>> randomNamesPairs = generateRandomPairs(names);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Match pairs results'),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(178, 18, 97, 176),
      ),
      backgroundColor: const Color.fromARGB(255, 170, 170, 170),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final pairs in randomNamesPairs) ...[
              for (final name in pairs) Text(name),
              const SizedBox(height: 20),
            ]
          ],
        ),
      ),
    );
  }

  List<List<String>> generateRandomPairs(List<String> names) {
    List<List<String>> pairs = [];

    List<String> shuffledNames = List<String>.from(names)..shuffle();

    for (int i = 0; i < shuffledNames.length; i += 2) {
      if (i + 1 < shuffledNames.length) {
        pairs.add([shuffledNames[i], shuffledNames[i + 1]]);
      } else {
        pairs.add([shuffledNames[i]]);
      }
    }

    return pairs;
  }
}
