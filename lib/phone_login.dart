import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main () {
  runApp(const Phonelogin());
}
class Phonelogin extends StatefulWidget {
  const Phonelogin({super.key});

  @override
  State<Phonelogin> createState() => _PhoneloginState();
}

class _PhoneloginState extends State<Phonelogin> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff1f4f8),
          textTheme:  TextTheme(
            //bodyMedium
            bodyMedium:GoogleFonts.outfit(
                fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
          )
      ),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1d2428),
          textTheme:  TextTheme(
            //bodyMedium
            bodyMedium:GoogleFonts.outfit(
                fontSize: 20,fontWeight: FontWeight.bold, color:  Colors.white),
          )
      ),

      home:  Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 25, 0, 0)),
              Text('Enter your Phone Number...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Padding(padding: EdgeInsets.all(30)),
               Center(
                 child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset('images/loginpage.png')
                  ),
               ),
              const Padding(padding: EdgeInsets.all(50)),
              Text('Mobile Number :',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Padding(padding: EdgeInsets.all(20)),
              TextFormField(
                controller: phoneController,
                decoration:InputDecoration(
                  hintText: "Enter Phone number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ) ,
              )

            ],
          )
          ),
        ),
      ),
    );
  }
}

