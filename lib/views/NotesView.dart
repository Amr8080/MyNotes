import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/widgets/EditNote.dart';
import 'package:untitled6/widgets/NotesWidget.dart';

import '../porvider/DarkThemeProvider.dart';
import '../widgets/AddNote_BottomSheet.dart';
import '../widgets/AppBar.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white54,
        onPressed: () {
          showModalBottomSheet(

             isScrollControlled: true,
              useRootNavigator: true,
              context: context,
              builder: (context){
            return AddNote();
              },
              shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          )
          );
        },
        child: Icon(Icons.add,color: Color(0xFF0a0d2c),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [

            const CustomAppBar(
              title: "Note",
              icon: Icons.search,
            ),

            Center(
                child: SwitchListTile(
                  title: Text('Theme'),
                  secondary: Icon(themeState.getDarkTheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined),
                  onChanged: (bool value) {
                    setState(() {
                      themeState.setDarkTheme = value;
                    });
                  },
                  value: themeState.getDarkTheme,
                )),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const EditNoteView();
                  }));
                },
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 7),
                  itemCount: 10,
                  itemBuilder: (Context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 12, right: 12),
                      child: const NotesWidget(),
                    );
                  },
                ),
              ),
            ),
            //NotesView()
          ],
        ),
      ),
    );
  }
}
