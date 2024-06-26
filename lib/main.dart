//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'config/config.dart';
import 'presentation/providers/state_providers.dart';

//  PARTS
// part 'main.g.dart';

//  PROVIDERS
// @riverpod
// String helloWorld(HelloWorldRef ref) {
//   return 'Hello World!';
// }
//  //   ///

void main() => runApp(const ProviderScope(child: MyApp()));

// class MyApp extends StatelessWidget {
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkMode = ref.watch(darkModeProvider);

    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      // routeInformationParser: appRouter.routeInformationParser,
      // routerDelegate: appRouter.routerDelegate,

      routerConfig: appRouter,
      // theme: AppTheme(isDarkmode: false).getTheme(),
      // theme: AppTheme(isDarkmode: true).getTheme(),
      theme: AppTheme(isDarkmode: isDarkMode).getTheme(),
    );
  }
}


//   ///
//  Import LIBRARIES
//  Import FILES
//  PARTS
//  PROVIDERS
//  //   ///