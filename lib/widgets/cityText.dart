import 'package:flutter/material.dart';
import 'package:weather_app/widgets/utils.dart';
class CityText extends StatelessWidget {
   CityText({Key? key, required this.title}) : super(key: key);
final TextEditingController citytextctrl=TextEditingController();
final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: citytextctrl,
        validator: (currentValue) {
          var nonNullable = currentValue ?? "";
          if (nonNullable.isEmpty) {
            return "$title field can't be empty!";
          }
          return null;
        },
        decoration: InputDecoration(
            fillColor: app_Whitecolor,
            filled: true,
            hintText: title,
            hintStyle: const TextStyle(fontFamily: "Poppins"),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10))));
  }

}
