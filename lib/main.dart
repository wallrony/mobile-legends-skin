import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/pages/hero_skin_page.dart';
import 'package:mobile_legends_skins/pages/home_page.dart';
import 'package:mobile_legends_skins/pages/skins_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Legends Skins',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'home': (context) => HomePage(),
        'skins': (context) => SkinsPage(),
        'hero-skin': (context) => HeroSkinPage()
      },
      home: HomePage(),
    );
  }
}
