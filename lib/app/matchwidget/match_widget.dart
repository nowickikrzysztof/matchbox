import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget {
  final TextEditingController nameController;
  final VoidCallback onNameSubmitted;

  const MatchWidget({
    Key? key,
    required this.nameController,
    required this.onNameSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Image.asset(
            'images/bluematch.png',
            fit: BoxFit.contain,
          ),
          Positioned(
            left: 82,
            top: 9,
            child: SizedBox(
              height: 35,
              width: 250,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Match name',
                  fillColor: Color.fromARGB(82, 255, 255, 255),
                  filled: true,
                ),
                onSubmitted: (_) {
                  onNameSubmitted();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
