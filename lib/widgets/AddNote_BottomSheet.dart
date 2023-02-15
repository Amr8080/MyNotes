import 'package:flutter/material.dart';

import 'CustomTextField.dart';
class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          height: 28,
        ),
        CustomFormTextField(hintText: "Note Title",onChanged:(data){
          print(data);
        },),
        CustomFormTextField(
          maxLines: 5,
          hintText: "Note Content",onChanged:(data){
          print(data);
        },),
      ],
    );
  }
}
