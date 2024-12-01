import 'package:chatnexus/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Main());
}
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xfff1f4f8),
            textTheme:  TextTheme(
              bodyMedium:GoogleFonts.outfit(
                  fontSize: 14,fontWeight: FontWeight.bold, color: const Color(0xff1d2428)),
            )
        ),
        darkTheme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff1d2428),
            textTheme:  TextTheme(
              bodyMedium:GoogleFonts.outfit(
                  fontSize: 14,fontWeight: FontWeight.bold, color: const Color(0xfff1f4f8)),
            )
        ),
        home: const Welcome()
    );
  }
}


