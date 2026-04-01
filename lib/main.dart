import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/features/Splash/view/splash.dart';


void main() {
  runApp(const MyApp());
    // runApp( DevicePreview(enabled: true, builder: (context) => MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Splash(),
    );
  }
}


