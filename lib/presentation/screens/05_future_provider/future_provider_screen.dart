//  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_esp/presentation/providers/future_providers.dart';
//  Import FILES
//  PARTS

//  PROVIDERS
//  //   ///

// class FutureProviderScreen extends StatelessWidget {
class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        // child: Text('Manny Emagnu')
        child: pokemonName.when(
          data: (data) => Text(' $data'),
          error: (error, stackTrace) => Text('$error'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'btn-1',
            child: const Icon(Icons.refresh_outlined),
            onPressed: () {
              ref.invalidate(pokemonNameProvider);
              ref.read(pokemonIdProvider.notifier).nextPokemon();
            },
          ),
          const SizedBox(height: 10.0),
          FloatingActionButton(
            heroTag: 'btn-2',
            child: const Icon(Icons.minimize_outlined),
            onPressed: () {
              ref.invalidate(pokemonNameProvider);
              ref.read(pokemonIdProvider.notifier).previousPokemon();
            },
          ),
        ],
      ),
    );
  }
}
