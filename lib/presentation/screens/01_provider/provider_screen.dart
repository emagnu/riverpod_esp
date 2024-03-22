//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../providers/hello_world_provider.dart';
//  PARTS
//  PROVIDERS
//  //   ///

// class ProviderScreen extends StatelessWidget {
class ProviderScreen extends ConsumerWidget {
  // ProviderScreen({super.key});
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('El Provider sencillo'),
      ),
      body: Center(
        child: Text(
          // 'Estoy aquí y soy Mani.',
          '$helloWorld Estoy aquí y soy Mani.',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
