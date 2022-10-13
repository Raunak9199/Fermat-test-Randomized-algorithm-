import 'package:fermat_test/fermat_test.dart';
import 'package:fermat_test/random.dart';

// If a is primem=, then it always returns true
// If a is composite, it returns false
bool isPrime(input, b) {
  if (input == 1 || input == 4) {
    return false;
  } else if (input == 2 || input == 3) {
    return true;
  } else {
    for (int i = 0; i <= b; i++) {
      List l = [];
      //Generating random integers in given range
      int ran = RandomInt.generate(max: input - 3);
      //Adding random integers in list
      l.add(ran);
      // Choosing random prime element from thelist
      int ele = getRandomElement(l);
      // Now calculate (ele^ input-1 and mod with input)
      if (fermat(ele, input - 1, input) != 1) {
        return false;
      }
    }
  }
  return true;
}
