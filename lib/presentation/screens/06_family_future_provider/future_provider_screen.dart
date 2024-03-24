//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../providers/future_providers.dart';
//  PARTS
//  PROVIDERS
//  //   ///

// class FamilyFutureScreen extends StatelessWidget {
class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  ConsumerState<FamilyFutureScreen> createState() => _FamilyFutureScreenState();
}

class _FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonFamilyProvider(pokemonId));

    return Scaffold(
        appBar: AppBar(
          title: Text('Family Future Provider - Pokemon id: $pokemonId'),
        ),
        body: Center(
          // child: Text('Bibi Fish - Exemplo 6'),
          child: pokemonAsync.when(
            data: (data) => Text(data),
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text('$error'),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'btn-1',
              onPressed: () {
                setState(() {
                  pokemonId++;
                });
                ref.read(pokemonIdProvider.notifier).nextPokemon();
                debugPrint('+ $pokemonId');
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: 'btn-2',
              onPressed: () {
                if (pokemonId <= 1) return;
                setState(() {
                  pokemonId--;
                });
                ref.read(pokemonIdProvider.notifier).previousPokemon();
                debugPrint('- $pokemonId');
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
