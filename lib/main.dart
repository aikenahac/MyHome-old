import 'package:YourHome/config/defaultValues.dart';
import 'package:YourHome/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
      )
  );

  getAllLightsState();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home()
      )
  ));
}