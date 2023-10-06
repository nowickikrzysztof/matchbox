import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchbox/app/eachmatch/eachmatchresult_page.dart';

class EachMatchPage extends StatefulWidget {
  const EachMatchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EachMatchPage> createState() => _EachMatchPageState();
}

class _EachMatchPageState extends State<EachMatchPage> {
  final List<String> _names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EachMatch'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final avaliableNames = [
            'Jan',
            'Kasia',
            'Marek',
            'Zosia',
            'Paweł',
            'Jacek',
            'Tomek'
          ];
          final randomName =
              avaliableNames[Random().nextInt(avaliableNames.length)];
          setState(() {
            _names.add(randomName);
          });
        },
        child: const Icon(Icons.add),
      ),
      persistentFooterButtons: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 238,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(178, 18, 97, 176),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5.0,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => EachMatchResultPage(
                      names: _names,
                    ),
                  ),
                );
              },
              child: Text(
                'Match',
                style: GoogleFonts.anton(fontSize: 32),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
