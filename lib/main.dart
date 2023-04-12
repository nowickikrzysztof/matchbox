import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
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
              'Draw a match in the:',
              style: GoogleFonts.anton(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
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
                  'Get started',
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
      ),
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
                      builder: (_) => const PairsPage(),
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
                  onPressed: () {},
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

class MatchWidget extends StatelessWidget {
  const MatchWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bluematch.png"),
        ),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      child: Text(title),
    );
  }
}
