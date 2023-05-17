import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchbox/app/getstarted/get_started.dart';

class PairsPage extends StatelessWidget {
  const PairsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MatchBox'),
      ),
      backgroundColor: const Color.fromARGB(255, 170, 170, 170),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Match matches in pairs',
              style: GoogleFonts.anton(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            SizedBox(
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const GetStartedPage(),
                  ));
                },
                child: Text(
                  'Match',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
