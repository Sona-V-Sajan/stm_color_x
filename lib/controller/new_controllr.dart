import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class New_Controller with ChangeNotifier {
  Color myBag=Colors.white;
  void onColorTapped(Color newColor){
    myBag = newColor;
    notifyListeners();//change ayit und change avan
  }
}