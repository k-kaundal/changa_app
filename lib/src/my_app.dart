import 'package:changa_app/src/ui/landing/intro.dart';
import 'package:changa_app/src/ui/landing/landing.dart';
import 'package:changa_app/src/ui/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true), home: Splash());
  }
}
