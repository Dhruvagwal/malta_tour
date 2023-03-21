// Created by Dhruv Aggarwal @dhruvagwal
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './middlewares/tts.dart';
import './screens/speech_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matla Tour Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gothic',
        primarySwatch: Colors.blue,
      ),
      home: const SpeechScreen(),
    );
  }
}

// Created by Dhruv Aggarwal @dhruvagwal