import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statem/controller/colorcontroller.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Consumer<ColorController>( ///consumer mattam veranda satalath mathram vrum athinu munne ollath restart chyumbol mathrame print akkuollu
   builder: (context,value,child)=>Scaffold(
        backgroundColor: value.myBag,
        body:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),

                ),
                  onPressed: (){
                  Provider.of<ColorController>(context,listen: false).onColorTapped(Colors.red);
                  }, child: Text("Red",
                  style:TextStyle(color:Colors.black,))),

              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),

                  ),
                  onPressed: (){
                    Provider.of<ColorController>(context,listen: false).onColorTapped(Colors.blue);
                  }, child: Text("Blue",style:TextStyle(color:Colors.black))),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),

                  ),
                  onPressed: (){
                    Provider.of<ColorController>(context,listen: false).onColorTapped(Colors.yellow);
                  }, child: Text("Yellow",style:TextStyle(color:Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}
