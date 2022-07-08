import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeDefault(Brightness.dark),
      home: const HomePage(),
    );
  }
}

ThemeData themeDefault(Brightness brightness) {
  var base = ThemeData(brightness: brightness);

  return base.copyWith(
    textTheme: GoogleFonts.montserratTextTheme(base.textTheme),
  );
}
