import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchbox/app/eachmatch/eachmatch_page.dart';
import 'package:matchbox/app/pairspage/pairs_page.dart';
import 'package:matchbox/app/pairspage/cubit/pairspage_cubit.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('MatchBox'),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(178, 18, 97, 176)),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/match1.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const SizedBox(height: 40),
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
                      builder: (_) => PairsPage(pairsCubit: PairspageCubit()),
                    ));
                  },
                  child: Text(
                    'Match matches in pairs',
                    style: GoogleFonts.anton(fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                      builder: (_) => const EachMatchPage(),
                    ));
                  },
                  child: Text(
                    'Match each match a match',
                    style: GoogleFonts.anton(fontSize: 32),
                    textAlign: TextAlign.center,
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
      ),
    );
  }
}
