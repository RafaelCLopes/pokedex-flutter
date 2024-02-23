part of 'pokemon_cubit.dart';

class PokemonState {
  final List<PokemonModel> list;
  final bool? loading;
  final int page;

  PokemonState({
    this.list = const [],
    this.page = 1,
    this.loading,
  });

  PokemonState copyWith({
    List<PokemonModel>? list,
    bool? loading,
    int? page,
  }) {
    return PokemonState(
      list: list ?? this.list,
      page: page ?? this.page,
      loading: loading,
    );
  }
}
