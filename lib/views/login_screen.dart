import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/utils.dart';
import 'package:jakone_pay_submission/views/component/help_fab.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //capsule language
            Positioned(
                top: 60,
                left: 50,
                child: Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 2))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/id_flag.png', fit: BoxFit.cover),
                      Image.asset('images/en_flag.png', fit: BoxFit.cover),
                    ],
                  ),
                )),

            //capsule jakcard
            Positioned(
                top: 60,
                right: 50,
                child: Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 4))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/ic_cc.png', fit: BoxFit.cover),
                      Image.asset(
                          width: 40,
                          height: 20,
                          'images/logo_jakcard.png',
                          fit: BoxFit.contain),
                    ],
                  ),
                )),
            // data
            Positioned(
              top: 200,
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Foto
                    Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('images/img_monas.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 20,
                              left: 50,
                              right: 50,
                              child: Container(
                                padding: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFC9842),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Monumen Nasional",
                                  style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )),

                    // Text
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Explore Jakarta with Jakarta Tourist Pass",
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                color: Color(0xFFFE5F5F),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    // 3 dots
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(2.0),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2.0),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2.0),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Continue as guess filled
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Util().showToast(
                                context, "Background button clicked");
                            Navigator.pushNamed(context, '/homescreen');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Container(
                            width: 350,
                            height: 65,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFE5F5F),
                                      Color(0xFFFC9842)
                                    ],
                                    end: Alignment(-1.0, 1),
                                    begin: Alignment(-1.0, -1)),
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: Colors.yellow, width: 2)),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 8.0),
                            child: Text(
                              "Continue as a Guest",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                    ),

                    //continue as guess outline
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Gradient border
                          Container(
                              width: 354,
                              height: 69,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFFE5F5F),
                                        Color(0xFFFC9842)
                                      ],
                                      end: Alignment(-1.0, 1),
                                      begin: Alignment(-1.0, -1)),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              )),
                          //elevated button
                          ElevatedButton(
                              onPressed: () {
                                Util().showToast(
                                    context, "Border button clicked");
                                Navigator.pushNamed(context, '/homescreen');
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              child: Container(
                                width: 348,
                                height: 63,
                                alignment: Alignment.center,
                                child: Text(
                                  "Continue as a Guest",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          color: Color(0xFFFE5F5F),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: const HelpFab());
  }
}
