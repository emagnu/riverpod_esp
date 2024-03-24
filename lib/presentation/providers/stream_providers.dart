//   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../../config/helpers/random_generator.dart';
//  PARTS
part 'stream_providers.g.dart';

//  PROVIDERS
@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {
  final names = <String>['Mani De-Fish'];
  yield names;

// RandomGenerator.randomNameStream().listen((event) { names.add(event); yield names;})
  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }

  // yield [];
}



//  //   ///

