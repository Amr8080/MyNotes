import 'package:flutter/material.dart';

import 'AppBar.dart';
import 'CustomTextField.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(children: [
                    const CustomAppBar(
                      title: "Edit Note",
                      icon: Icons.check,
                    ),
                  ])),
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
          ),
        ));
  }
}
