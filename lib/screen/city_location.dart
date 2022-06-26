import 'package:flutter/material.dart';
import 'package:weather_app/widgets/cityText.dart';
import 'package:weather_app/widgets/utils.dart';
class CityLocation extends StatefulWidget {
  const CityLocation({Key? key}) : super(key: key);

  @override
  State<CityLocation> createState() => _CityLocationState();
}

class _CityLocationState extends State<CityLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 22,right: 22,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
            width: 20,
            child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("images/cityback.png"))),
           SizedBox(height: 10,),
           Text("Select City",style: heading7,),
            CityText(title: "Enter your Name")
          ],
        ),
      ));
  }
}
