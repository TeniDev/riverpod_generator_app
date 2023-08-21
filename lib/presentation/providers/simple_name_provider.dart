import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';

part 'simple_name_provider.g.dart';

@riverpod
String nameGen(NameGenRef ref) {
  return RandomGenerator.getRandomName();
}

// El autodispose es para cuando ya no se este usando el provider, se limpia