import 'package:flutter/foundation.dart';

class Status extends ChangeNotifier {
  List<String> status = [
    'Available',
    'Available',
    'Available',
    'Available',
  ];
  void updateStatus(String s, int i) {
    status[i] = s;
    notifyListeners();
    print(status);
  }
}
