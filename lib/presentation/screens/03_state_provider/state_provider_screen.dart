//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_esp/config/config.dart';
//  Import FILES
import '../../providers/state_providers.dart';
//  PARTS
//  PROVIDERS
//  //   ///

// class StateProviderScreen extends StatelessWidget {
class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(darkModeProvider);
    final userName = ref.watch(userNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text('Por favor,\n presione un ícono o un botón',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
            const SizedBox(height: 30.0),
            IconButton(
              // El SOL
              // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
              // LA LUNA
              // icon: const Icon(Iconsj.dark_mode_outlined, size: 100),
              icon: Icon(
                  isDarkMode
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                  size: 100),
              onPressed: () {
                debugPrint("Pressed Icon Button. Current value: $isDarkMode");
                // ref.read(counterProvider.state).state += 1;
                ref.read(darkModeProvider.notifier).toggleDarkMode();
              },
            ),
            Text('Has iniciado sesión como :\n $userName',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25)),
            TextButton.icon(
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
              // label: const Text('0', style: TextStyle(fontSize: 100)),
              label: Text('$counter', style: const TextStyle(fontSize: 100)),
              onPressed: () {
                // debugPrint("Pressed Counter button. Current value: $counter");
                ref.read(counterProvider.notifier).increaseByOne();
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {
          // ref.read(counterProvider.state).state = Random().nextInt(100);
          ref
              .read(userNameProvider.notifier)
              // .changeUsername('Maria Gonzalez-Hidalgo');
              .changeUsername(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}
