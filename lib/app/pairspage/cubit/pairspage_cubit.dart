import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'pairspage_state.dart';

class PairspageCubit extends Cubit<PairspageState> {
  PairspageCubit() : super(const PairspageState([]));

  void addName(String name) {
    final currentState = state;
    if (!currentState.names.contains(name)) {
      emit(currentState.copyWith(names: [...currentState.names, name]));
    }
  }

  void removeName(String name) {
    final currentState = state;
    emit(currentState.copyWith(names: [...currentState.names]..remove(name)));
  }
}
