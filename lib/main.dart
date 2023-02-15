import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/porvider/DarkThemeProvider.dart';
import 'package:untitled6/views/NotesView.dart';

import 'consts/theme_data.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });}

class MyApp extends StatefulWidget {

  MyApp({super.key});


  @override

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;

  DarkThemeProvider ThemeProvider  =  DarkThemeProvider();
  void getTheme() async {
    ThemeProvider.setDarkTheme = await ThemeProvider.DarkThemePrefs.getTheme();
  }
  @override
  void initState() {
    getTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ThemeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, ThemeProvider, child) {
          return MaterialApp(
            theme: Styles.themeData(ThemeProvider.getDarkTheme, context),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: NotesView(),
          );

        },
      ),
    );
  }
}


