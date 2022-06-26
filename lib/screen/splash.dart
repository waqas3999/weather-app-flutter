import 'package:flutter/material.dart';
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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
