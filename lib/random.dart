import 'dart:math';

extension RandomInt on int {
  static int generate({int min = 2, required int max}) {
    final random = Random();
    return min + random.nextInt(max - min);
  }
}

getRandomElement<T>(List list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}
