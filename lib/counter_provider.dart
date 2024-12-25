import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int initialValue = 0;

  int get count => initialValue;

  increment() {
    initialValue++;
    notifyListeners();
  }

  decrement() {
    if (initialValue >= 1) {
      initialValue--;
    }
    notifyListeners();
  }
}
