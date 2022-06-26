
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/citybtn.dart';
import 'package:weather_app/widgets/currentbtn.dart';
import 'package:weather_app/widgets/utils.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20,right: 37,top: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,",style: heading2,),
                      Text("let’s set you ",style: heading3,),
                      Text("weather..",style: heading4,),
                    ],
                  ),
                )),
        Container(
          width: 399,
          height:  255,
          decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("images/landing.png",),
                fit: BoxFit.fill
              )
          ),
        ),
        Spacer(),
        CurrentButton(),
        SizedBox(height: 10,),
        CityButton(),
        SizedBox(height: 20,)
        ],
      ));
  }
}
