import 'package:flutter/material.dart';
import 'package:untitled6/widgets/NotesWidget.dart';

import '../widgets/AppBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children:  [
            const CustomAppBar(),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder:(Context , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const NotesWidget(),
                  );
                },
              ),
            )
            //NotesView()
          ],
        ),
      ),
    );
  }
}
