import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchbox/app/pairsresultpage/pairsresult_page.dart';
import 'package:matchbox/app/matchwidget/match_widget.dart';
import 'package:matchbox/app/pairspage/cubit/pairspage_cubit.dart';

class PairsPage extends StatelessWidget {
  final PairspageCubit pairsCubit;

  const PairsPage({Key? key, required this.pairsCubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    void addMatchWidget() {
      final name = nameController.text;
      if (name.isNotEmpty) {
        pairsCubit.addName(name);
        nameController.clear();
      }
    }

    return BlocBuilder<PairspageCubit, PairspageState>(
      bloc: pairsCubit,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Match matches in pairs'),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(178, 18, 97, 176),
          ),
          backgroundColor: const Color.fromARGB(255, 170, 170, 170),
          floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(178, 18, 97, 176),
            onPressed: addMatchWidget,
            child: const Icon(Icons.add),
          ),
          body: ListView(
            children: [
              for (final name in state.names)
                Dismissible(
                  key: Key(name),
                  onDismissed: (direction) {
                    pairsCubit.removeName(name);
                  },
                  child: MatchWidget(
                    nameController: TextEditingController(text: name),
                    onNameSubmitted: addMatchWidget,
                  ),
                ),
              MatchWidget(
                nameController: nameController,
                onNameSubmitted: addMatchWidget,
              ),
            ],
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
                    if (nameController.text.isNotEmpty &&
                        !state.names.contains(nameController.text)) {
                      addMatchWidget();
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => PairsResultPage(
                          names: state.names,
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
      },
    );
  }
}
