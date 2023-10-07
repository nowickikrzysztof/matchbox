part of 'pairspage_cubit.dart';

@immutable
class PairspageState {
  final List<String> names;

  const PairspageState(this.names);

  PairspageState copyWith({List<String>? names}) {
    return PairspageState(names ?? this.names);
  }
}
