import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/intro_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: "MOTOS YAMAHA",
      theme: ThemeData.dark(),
      home:IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

