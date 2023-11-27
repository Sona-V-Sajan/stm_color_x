import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statem/controller/colorcontroller.dart';
import 'package:statem/controller/new_controllr.dart';
import 'package:statem/view/first_screen/first_screeen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(///multiproviderr\
        providers: [
         ChangeNotifierProvider(
             create:   (context)=>ColorController(),
         ),
          ChangeNotifierProvider(
            create:   (context)=>New_Controller(),
          ),],
        child: MaterialApp(
        home:FirstScreen() ,
    ),

    );


    ///single provider
    //   ChangeNotifierProvider(
    //   create:(context)=>ColorController(),
    //   child: MaterialApp(
    //     home:FirstScreen() ,
    //   ),
    // );
  }
}
