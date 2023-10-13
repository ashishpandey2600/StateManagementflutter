import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;

  String? eligibilityMessage;

  void checkEligibitlity(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "Your are Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = " Your are not Eligible";
      notifyListeners();
    }
  }
}
