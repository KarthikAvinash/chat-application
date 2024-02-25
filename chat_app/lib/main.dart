import 'package:camera/camera.dart';
import 'package:chat_app/Screens/CameraScreen.dart';
import 'package:chat_app/Screens/Homescreen.dart';
import 'package:chat_app/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
      ),
      home: LoginScreen(),
    );
  }
}
