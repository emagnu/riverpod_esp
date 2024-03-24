//  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../../config/helpers/pokemon_information.dart';
//  PARTS
part 'future_providers.g.dart';
//  PROVIDERS

// @riverpod
@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);

  // final pokemonName = await PokemonInformation.getPokemonName(1);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);

  ref.onDispose(() {
    debugPrint('Estamos a punto de eliminar el provider pokemonName');
  });
  return pokemonName;
}

// @riverpod
@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() {
    return 1;
  }

  void nextPokemon() {
    // state = state + 1;
    state++;
  }

  void previousPokemon() {
    if (state > 1) {
      state--;
    } else {
      state = 10;
    }
  }
}

// ! Anteriormente llamodaos Famili
@riverpod
Future<String> pokemonFamily(PokemonFamilyRef ref, int pokemonId) async {
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
}

//  //   ///



