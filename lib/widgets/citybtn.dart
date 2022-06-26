import 'package:flutter/material.dart';
import 'package:weather_app/screen/city_location.dart';
import 'package:weather_app/widgets/utils.dart';

class CityButton extends StatelessWidget {
  const CityButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 21),
      child: Container(
        height: 72,
        width: widthVariable,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>( app_Bluecolor),

            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CityLocation()));
            },
            child: Row(
                children:[Text("Select City",style: heading6),
                  Spacer(),
                  SizedBox(
                      width: 33,
                      child: Image.asset("images/bottomback.png")),

                ])
        ),
       ),
    );
  }
}
