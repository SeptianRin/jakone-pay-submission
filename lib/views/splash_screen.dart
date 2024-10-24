import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //draw background
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFF4747), Color(0xFFFC9842)],
                  begin: Alignment(-1.0, 1),
                  end: Alignment(-1.0, -1))),
          child: Stack(
            children: [
              //top decoration image
              const Positioned(
                  top: 0,
                  left: 0,
                  child: Image(
                      image: AssetImage('images/left_top_decoration_1.png'))),
              const Positioned(
                  top: 0,
                  left: 50,
                  child: Image(
                      image: AssetImage('images/left_top_decoration_2.png'))),
              //bottom decoration image

              const Positioned(
                  bottom: 70,
                  right: 0,
                  child: Image(
                      image:
                          AssetImage('images/right_bottom_decoration_1.png'))),
              const Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                      image:
                          AssetImage('images/right_bottom_decoration_2.png'))),

              //logo
              const Center(
                child: Image(image: AssetImage('images/logo.png')),
              ),

              //logo ojk

              const Positioned(
                  bottom: 80,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image(
                            width: 80,
                            height: 40,
                            image: AssetImage('images/logo_ojk.png')),
                        Image(
                            width: 80,
                            height: 40,
                            image: AssetImage('images/logo_lps.png')),
                      ],
                    ),
                  )),

              //disclaimer
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Text(
                  "powered by Bank DKI \n 2023",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
