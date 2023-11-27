
import 'dart:ui';
import 'package:flutter/material.dart';
class ColorController with ChangeNotifier{
  Color myBag=Colors.white;
  void onColorTapped(Color newColor){
    myBag = newColor;
    notifyListeners();//change ayit und change avan
  }

}