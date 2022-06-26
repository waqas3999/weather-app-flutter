import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/screen/landing.dart';
import 'package:weather_app/widgets/utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator/geolocator.dart';
class CurrentButton extends StatelessWidget {
   CurrentButton({Key? key}) : super(key: key);
  final TextEditingController currentctrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 22,right: 21,top: 28),
      child: Container(
          height: 72,
          width: widthVariable,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>( app_Btn_bgcolor),

            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Landing()));
            },
            child: Row(
    children:[Text("Select Current Location",style: heading5),
       Spacer(),
       SizedBox(
           width: 20,
           child: Image.asset("images/backarrow.png")),

    ])
      ),
    ));
  }
}
