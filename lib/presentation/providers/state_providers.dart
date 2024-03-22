//   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'state_providers.g.dart';
//  PROVIDERS

@riverpod
class Counter extends _$Counter {
  @override
  // int build() => 5;
  int build() => 0;

  void increaseByOne() {
    state++;
  }

  void decreaseByOne() {
    state--;
  }
}

// DarkMode -> boolean default = false;
// void toggleDarkMode()
@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}

// Username => String;
// Deafult: 'Bibi Fish'
// void changeUsername(String newUsername) {
//   state = newUsername;
// }
// usernameProvider.notifier).changeName(RandomGeneratot.getRandomName())
@riverpod
class UserName extends _$UserName {
  @override
  String build() => 'Bibi Fish';

  void changeUsername(String newUsername) {
    state = newUsername;
  }
}
//  //   ///
