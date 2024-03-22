//   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'hello_world_provider.g.dart';

//  PROVIDERS
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hola Mundo!';
}
//  //   ///