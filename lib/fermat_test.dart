import 'dart:math';

//it calculate a^n-1 % p
//a-> random element selected by function
//n -> input from user
//p-> input to mod the value a^n
fermat(a, int n, p) {
  //Initializing result
  int res = 1;
  //If a overflows ('a' >= p) then update 'a'
  a = a % p;

  while (n > 0) {
    //If n is odd, multiply 'a' with result
    if ((n % 2).isOdd) {
      res = int.parse(((res * a) % p).toString());
      n = n - 1;
    } else {
      a = (pow(a, 2) % p);
      //n is even now
      n = (n / 2).floor();
    }
  }
  return res % p;
}
