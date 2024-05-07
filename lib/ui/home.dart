import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 148,
                child: AppBar(
                  backgroundColor: Color(0xFF45A5FF),
                  flexibleSpace: Container(
                    width: 64,
                    height: 74,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo.png'),
                        Text(
                          'Shopan',
                          style: GoogleFonts.dmSerifDisplay(
                            textStyle:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
