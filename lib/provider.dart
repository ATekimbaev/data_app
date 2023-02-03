import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs extends ChangeNotifier {
  SharedPreferences? prefs;
  int counter = 0;

  Prefs() {
    initPrefs();
  }

  void increment() async {
    counter++;
    await prefs?.setInt('counter', counter);
    notifyListeners();
  }

  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }
}
