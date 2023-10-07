import 'package:flutter/material.dart';

class EachMatchResultPage extends StatelessWidget {
  const EachMatchResultPage({
    Key? key,
    required this.names,
  }) : super(key: key);

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    final List<List<String>> randomNamesPairs = generateRandomPairs(names);

    return Scaffold(
      appBar: AppBar(
        title: const Text('EachMatchResult'),
      ),
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
