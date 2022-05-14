import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'config/app_config.dart' as config;
import 'package:flutter/material.dart';
import 'route_generator.dart';

void main() {
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burbty',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF252525),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF2C2C2C),
        accentColor: config.Colors().mainDarkColor(1),
        hintColor: config.Colors().secondDarkColor(1),
        focusColor: config.Colors().accentDarkColor(1),
        /*textTheme: TextTheme(
          button: const TextStyle(color: Color(0xFF252525)),
          headlineLarge: TextStyle(
              fontSize: 20.0, color: config.Colors().secondDarkColor(1)),
          displaySmall: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().secondDarkColor(1)),
          displayMedium: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().secondDarkColor(1)),
          displayLarge: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: config.Colors().mainDarkColor(1)),
          subtitle1: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
              color: config.Colors().secondDarkColor(1)),
          subtitle2: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: config.Colors().secondDarkColor(1)),
          titleMedium: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().mainDarkColor(1)),
          bodySmall: TextStyle(
              fontSize: 12.0, color: config.Colors().secondDarkColor(1)),
          bodyMedium: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().secondDarkColor(1)),
          caption: TextStyle(
              fontSize: 12.0, color: config.Colors().secondDarkColor(0.7)),
        ),*/
      ),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        brightness: Brightness.light,
        accentColor: config.Colors().mainColor(1),
        focusColor: config.Colors().textSecondeColor(1),
        hintColor: config.Colors().textAccentColor(1),
        /* textTheme: TextTheme(
          button: const TextStyle(color: Colors.white),
          headline1: TextStyle(
              fontSize: 20.0, color: config.Colors().textSecondeColor(1)),
          displaySmall: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().textSecondeColor(1)),
          displayMedium: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().textSecondeColor(1)),
          displayLarge: const TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w700, color: Colors.white),
          //display4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().textSecondeColor(1)),
          subtitle2: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: config.Colors().textSecondeColor(1)),
          subtitle1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().textMainColor(1)),
          bodyText1: TextStyle(
              fontSize: 12.0, color: config.Colors().textSecondeColor(1)),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: config.Colors().textSecondeColor(1)),
          caption: TextStyle(
              fontSize: 12.0, color: config.Colors().textAccentColor(0.6)),
        ),*/
      ),
    );
  }
}
