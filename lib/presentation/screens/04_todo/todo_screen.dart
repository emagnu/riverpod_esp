//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../../config/helpers/random_generator.dart';
import '../../providers/todos_providers.dart';
//  PARTS

//  PROVIDERS

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref
              .read(todosProvider.notifier)
              .createTodo(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}

class _TodoView extends ConsumerWidget {
  const _TodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(todoCurrentFilterProvider);
    final todos = ref.watch(todosProvider);

    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        SegmentedButton(
          segments: const [
            // ButtonSegment(value: 'all', icon: Text('Todos')),
            // ButtonSegment(value: 'completed', icon: Text('Invitados')),
            // ButtonSegment(value: 'completed', icon: Text('No invitados')),
            ButtonSegment(value: FilterType.all, icon: Text('Todos')),
            ButtonSegment(value: FilterType.completed, icon: Text('Invitados')),
            ButtonSegment(
                value: FilterType.pending, icon: Text('No invitados')),
          ],
          // selected: const <String>{'all'},
          selected: <FilterType>{currentFilter},
          onSelectionChanged: (value) {
            ref
                .read(todoCurrentFilterProvider.notifier)
                .setCurrentFilter(value.first);
          },
        ),
        const SizedBox(height: 5),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return SwitchListTile(
                  // title: const Text('Juan carlos'),
                  title: Text(todo.description),
                  // value: true,
                  value: todo.done,
                  onChanged: (value) {});
            },
          ),
        )
      ],
    );
  }
}
