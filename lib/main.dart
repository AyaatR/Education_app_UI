import 'package:eduction_ui/Welcome_Screen.dart';
import 'package:eduction_ui/course_screen.dart';
import 'package:eduction_ui/home_screen.dart';
import 'package:eduction_ui/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         // scaffoldBackgroundColor: Colors.white,
        primaryColor:Colors.deepPurpleAccent ,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.deepPurpleAccent),
          iconTheme: const IconThemeData(size: 40.0, color: Colors.white),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  //color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                  wordSpacing: 2),
              headlineMedium: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  color: Colors.black54,
                  fontWeight: FontWeight.w700),
              headlineSmall: const TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800))),
      //home: const WelcomeScreen(),
      initialRoute: '/',

      routes: {
        '/': (ctx) => WelcomeScreen(),
        HomeScreen.ScreenRoute: (ctx) => HomeScreen(),
       TabsScreen.screenRoute:(ctx)=>TabsScreen(),
        CourseScreen.screenRoute:(ctx)=>CourseScreen()

      },
    );
  }
}
