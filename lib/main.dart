import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:klasifikasi_selada/TfliteModel.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/98432-loading.json'),

      //Column(
      //   children: [
      //     Image.asset('assets/bg.jpg'),
      //     const Text('Klasifikasi Selada', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
      //   ],
      // ),
      backgroundColor: Colors.lightGreenAccent,
      nextScreen: const TfliteModel(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 2),
    );
  }
}


