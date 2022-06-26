import 'package:flutter/material.dart';
import 'package:weather_app/widgets/utils.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
          alignment:Alignment.center,
        children:[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 597,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("images/home.png",),
                  fit: BoxFit.cover)
            ),
          ),Positioned(
            top: 25,
              left: 23,
              child: Row(
                 children:[SizedBox(
                width: 20,
                child: Image.asset("images/reset.png")),
                 SizedBox(width: 91,),
                 Text("Australia",style: heading9,),



              ])),
         ],
      ));
  }
}
