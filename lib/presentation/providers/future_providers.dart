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
  final pokemonName = await PokemonInformation.getPokemonName(1);
  // final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  ref.onDispose(() {
    debugPrint('Estamos a punto de eliminar el provider pokemonName');
  });
  return pokemonName;
}
//  //   ///



