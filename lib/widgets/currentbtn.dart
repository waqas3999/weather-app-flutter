import 'package:flutter/material.dart';
import 'package:weather_app/screen/landing.dart';
import 'package:weather_app/widgets/utils.dart';
class CurrentButton extends StatelessWidget {
   CurrentButton({Key? key}) : super(key: key);
  final TextEditingController currentctrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Container(
          height: 50,
          width: widthVariable,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>( app_Btn_bgcolor),
              shadowColor: MaterialStateProperty.all<Color>(app_Bluecolor)
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Landing()));
            },
            child:  Text(
              "Select Current Location",style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                color: Colors.white,
            ),
            )
          )
      ),
    );
  }
}
