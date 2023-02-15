import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText, this.onChanged ,this.maxLines, this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;
  int? maxLines;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      child: TextFormField(
        autofocus: true,

        keyboardType: TextInputType.multiline,

         maxLines: maxLines,
        cursorColor: Colors.red,
        obscureText:obscureText!,

        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(25.0),

          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
            borderRadius: BorderRadius.circular(40.0),
          ),

            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
              borderRadius: BorderRadius.circular(40.0),
            ),
          hintText: hintText,
          hintStyle: TextStyle(

            color: Colors.red,
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),

          ),
        ),

      ),
    );
  }
}
