import 'package:flutter/material.dart';
import 'package:weather_app/screen/landing.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    _navigateToLogin();
  }
  _navigateToLogin()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Landing()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Container(
      width: 129,
      height: 134,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("images/splash.png",),
          fit: BoxFit.fill,
        )))
        ],
      ),
    );
  }
}
