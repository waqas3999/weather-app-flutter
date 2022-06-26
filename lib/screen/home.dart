import 'package:flutter/material.dart';
import 'package:weather_app/widgets/utils.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue='Karachi';
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
                  fit: BoxFit.fitWidth)
            ),
          ),Positioned(
            top: 25,
              left: 23,
              child: GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: Row(
                   children:[SizedBox(
                  width: 20,
                  child: Image.asset("images/reset.png")),
                   SizedBox(width: 91,),
    DropdownButton<String>(
      autofocus: true,
    alignment: Alignment.center,
    value: dropdownValue,
    icon:  Icon(Icons.keyboard_arrow_down,size: 25,color: app_Blackcolor,),
    elevation: 16,
    style:  heading12,
    onChanged: (String? newValue) {
    setState(() {
    dropdownValue = newValue!;
    });
    },
    items: <String>['Karachi', 'Punjab', 'Gilgit', 'Quetta']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    )
                   ]
                ),
              )
         ),

          Padding(
            padding: const EdgeInsets.only(top: 610,left: 22,right: 10),
            child: Row(
              children: [
            Text("Today",style: heading10,),
            Spacer(),
            Text("Sydney, Australia",style: heading11,)
            ],
            ),
          )
        ],
      ));
  }
}
