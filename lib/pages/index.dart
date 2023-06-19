import 'package:flutter/material.dart';
import 'package:sling_project1/pages/CardDetails.dart';
import 'package:sling_project1/pages/benefit.dart';
import 'package:sling_project1/pages/home.dart';

import 'checkout.dart';
import 'history.dart';
import 'personalise.dart';
import 'priceDiscountedbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const myColorScheme = ColorScheme(
      error: Colors.red,

      onError: Colors.red,
      primary: Colors.amber, // Use Amber as the primary color for the button
      onPrimary:
          Colors.black, // Use AmberAccent as the variant color for the button
      // secondaryContainer: Colors.grey,
      secondary: Colors.grey, // Use grey as the secondary color
      onSecondary:
          Colors.white, // Use white as the text color for the secondary color
      background: Colors.black, // Use black as the background color
      onBackground:
          Colors.white, // Use white as the text color for the background
      surface: Colors.black, // Use black as the surface color
      onSurface: Colors.white, // Use white as the text color for the surface
      brightness: Brightness.dark, // Use dark mode
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // color theme for text white and background black and button as amber
        colorScheme: myColorScheme,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      routes: {
        '/benefit': (context) => benefit(myColorScheme),
        '/': (context) => CardDetails(),
        '/history': (context) => history(),
        '/home': (context) => home(myColorScheme: myColorScheme),
        '/checkout': (context) => checkOut(myColorScheme),
        '/per': (context) => Per(myColorScheme),
      },
      initialRoute: '/',
    );
  }
}
