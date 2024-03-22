//   ///
//  Import LIBRARIES
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../../presentation/screens/screens.dart';
//  PARTS
part 'app_router.g.dart';

//  PROVIDERS
@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const RouterScreen(),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/todo',
      builder: (context, state) => const TodoScreen(),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),
    GoRoute(
      path: '/future-family-provider',
      builder: (context, state) => const FamilyFutureScreen(),
    ),
    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),
    GoRoute(
      path: '/change-notifier-provider',
      builder: (context, state) => const ChangeNotifierScreen(),
    ),
    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const StateNotifierScreen(),
    ),
  ]);
}
//  //   ///

// final appRouter = GoRouter(routes: [
//   GoRoute(
//     path: '/',
//     builder: (context, state) => const HomeScreen(),
//   ),
//   GoRoute(
//     path: '/provider',
//     builder: (context, state) => const ProviderScreen(),
//   ),
//   GoRoute(
//     path: '/provider-router',
//     builder: (context, state) => const RouterScreen(),
//   ),
//   GoRoute(
//     path: '/state-provider',
//     builder: (context, state) => const StateProviderScreen(),
//   ),
//   GoRoute(
//     path: '/todo',
//     builder: (context, state) => const TodoScreen(),
//   ),
//   GoRoute(
//     path: '/future-provider',
//     builder: (context, state) => const FutureProviderScreen(),
//   ),
//   GoRoute(
//     path: '/future-family-provider',
//     builder: (context, state) => const FamilyFutureScreen(),
//   ),
//   GoRoute(
//     path: '/stream-provider',
//     builder: (context, state) => const StreamProviderScreen(),
//   ),
//   GoRoute(
//     path: '/change-notifier-provider',
//     builder: (context, state) => const ChangeNotifierScreen(),
//   ),
//   GoRoute(
//     path: '/state-notifier-provider',
//     builder: (context, state) => const StateNotifierScreen(),
//   ),
// ]);

//
// import '../../presentation/screens/01_provider/provider_screen.dart';
// import '../../presentation/screens/02_provider_router/router_screen.dart';
// import '../../presentation/screens/03_state_provider/state_provider_screen.dart';
// import '../../presentation/screens/04_todo/todo_screen.dart';
// import '../../presentation/screens/05_future_provider/future_provider_screen.dart';
// import '../../presentation/screens/06_family_future_provider/future_provider_screen.dart';
// import '../../presentation/screens/07_stream_provider/stream_provider_screen.dart';
// import '../../presentation/screens/08_state_notifier/state_notifier_screen.dart';
// import '../../presentation/screens/09_change_notifier/change_notifier_screen.dart';
// import '../../presentation/screens/home/home_screen.dart';