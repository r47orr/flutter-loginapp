import 'dart:math';

class RandomNumberService {
  static int randomNumber(int max) {
    return Random().nextInt(max);
  }
}
