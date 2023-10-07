import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchbox/app/getstarted/get_started.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 170, 170),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Draw a match in the:',
              style: GoogleFonts.anton(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Image(
              image: AssetImage('images/matchbox.png'),
              width: 250,
            ),
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
                  'Get Started',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 238,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color.fromARGB(178, 177, 23, 23),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5.0,
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(
                  'Get lost',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
