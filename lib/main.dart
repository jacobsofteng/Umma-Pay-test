import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/azkar_screen.dart';
import './screens/azkar_morning_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Umma Pay',
      debugShowCheckedModeBanner: false,
      routes: {
        Azkar.routeName: (ctx) => Azkar(),
        AzkarMorning.routeName: (ctx) => AzkarMorning(),
      },
      home: Azkar(),
    );
  }
}
