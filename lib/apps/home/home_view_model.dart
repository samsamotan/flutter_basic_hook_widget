import 'package:flutter/cupertino.dart';

class HomeChangeNotifier extends ChangeNotifier {
  int increment = 0;
  Future<void> reloadState() async {
    increment += 1;
    notifyListeners();
  }
}
