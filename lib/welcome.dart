import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:chatnexus/phone_login.dart';
import 'package:url_launcher/url_launcher.dart';
void main () {
  runApp(const Welcome());
}
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff1f4f8),
        textTheme:  TextTheme(
          bodyMedium:GoogleFonts.outfit(
              fontSize: 14,fontWeight: FontWeight.bold, color:  Colors.black),
        )
      ),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1d2428),
          textTheme:  TextTheme(
            bodyMedium:GoogleFonts.outfit(
                fontSize: 14,fontWeight: FontWeight.bold, color:  Colors.white),
          )
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(40)),
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset('images/chatnexus logo.png')
                  ),
                  const Padding(padding: EdgeInsets.only(top: 300)),
                  Center(
                    child: SizedBox(
                      width: 350,
                      child: RichText(
                        text:  TextSpan(children: [
                          TextSpan(
                              text: 'Tap “Agree and continue” to accept the ',
                          style: Theme.of(context).textTheme.bodyMedium
                          ),
                          TextSpan(
                              text: 'Chat Nexus Terms of Services and  Privacy Policy',
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: const Color(0xff174AE4)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async{
                                const url = 'https://pub.dev';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }
                          )
                        ]),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Phonelogin()),
                    );
                  },
                      style: ElevatedButton.styleFrom(

                        fixedSize: const Size(300, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        shadowColor: const Color(0xffabbbea),
                        elevation: 10,
                        backgroundColor: const Color(0xffabbbea),
                      ),
                      child:  Text('Agree & Continue',
                  style: GoogleFonts.outfit(fontSize: 20,fontWeight: FontWeight.bold, color: const Color(0xff1D2428)),)
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 40))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}