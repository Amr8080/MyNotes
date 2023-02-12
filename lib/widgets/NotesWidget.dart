import 'package:flutter/material.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Note Title",
                style: TextStyle(color: Colors.white),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 8,),
              child: Text(
                "Note Content ",
                style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 13),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete,color: Colors.white.withOpacity(.8),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(

              "12 Feb 2023",
              style: TextStyle(
                fontSize: 11,
                color: Colors.white.withOpacity(.8),

              ),
            ),
          )
        ],
      ),
    );
  }
}
