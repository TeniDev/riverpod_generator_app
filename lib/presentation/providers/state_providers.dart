import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() {
    state++;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}

@Riverpod(keepAlive: true)
class RandomName extends _$RandomName {
  @override
  String build() {
    return RandomGenerator.getRandomName();
  }

  void changeName() {
    state = RandomGenerator.getRandomName();
  }
}
