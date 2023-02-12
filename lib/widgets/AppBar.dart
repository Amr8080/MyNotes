import 'package:flutter/material.dart';

import 'CustomSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Spacer(),
          CustomSearch()
        ],
      ),
    );
    ;
  }
}
