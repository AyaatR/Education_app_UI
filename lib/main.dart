import 'package:eduction_ui/Screens/Welcome_Screen.dart';
import 'package:eduction_ui/Screens/course_screen.dart';
import 'package:eduction_ui/Screens/home_screen.dart';
import 'package:eduction_ui/Screens/tabs_screen.dart';
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
          primaryColor: Colors.deepPurpleAccent,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.deepPurpleAccent),
          iconTheme: const IconThemeData(size: 40.0, color: Colors.white),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'Bold',
                   color: Colors.black,
                  fontWeight: FontWeight.w700),


              headlineMedium: const TextStyle(
                fontSize: 17,
                fontFamily: 'Regular',
                color: Colors.black,
              ),


              titleMedium: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Medium',
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w600),


              headlineLarge: const TextStyle(
                  fontSize: 17,
                  fontFamily: 'Regular',
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w800),


              headlineSmall: const TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800)


          )),
      //home: const WelcomeScreen(),
      initialRoute: '/',

      routes: {
        '/': (ctx) => WelcomeScreen(),
        HomeScreen.ScreenRoute: (ctx) => HomeScreen(),
        TabsScreen.screenRoute: (ctx) => TabsScreen(),
        CourseScreen.screenRoute: (ctx) => CourseScreen()
      },
    );
  }
}
