import 'package:flutter/material.dart';

class NumberAudio {
  late String audioUri;
  late MaterialColor buttonColor;
  late String buttonText;

  NumberAudio(String au, MaterialColor bc, String bt) {
    audioUri = au;
    buttonColor = bc;
    buttonText = bt;
  }
}
