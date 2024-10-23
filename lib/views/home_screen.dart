import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/utils.dart';
import 'package:jakone_pay_submission/views/component/bottom_navbar.dart';
import 'package:jakone_pay_submission/views/component/help_fab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Stack(children: [
        //Header
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFF4747), Color(0xFFFC9842)],
                    end: Alignment(-1.0, 1),
                    begin: Alignment(-1.0, -1)),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120.0),
                  bottomRight: Radius.circular(120.0),
                )),
          ),
        ),

        //Logo Jak card
        const Positioned(
          top: 30,
          left: 10,
          width: 200,
          height: 100,
          child: Image(image: AssetImage('images/logo.png')),
        ),
        //Right top button
        Positioned(
          top: 50,
          right: 10,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFF4747), Color(0xFFFC9842)],
                        end: Alignment(-1.0, 1),
                        begin: Alignment(-1.0, -1)),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          offset: Offset(0, 5))
                    ]),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_document),
                    color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.all(4),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFF4747), Color(0xFFFC9842)],
                        end: Alignment(-1.0, 1),
                        begin: Alignment(-1.0, -1)),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          offset: Offset(0, 5))
                    ]),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        //Greeting

        const Positioned(
          top: 120,
          left: 10,
          width: 80,
          height: 80,
          child: Icon(
            Icons.supervised_user_circle,
            size: 80,
            color: Colors.white,
          ),
        ),

        Positioned(
          top: 130,
          left: 100,
          child: Text(
            "Good Morning, \nGuest",
            style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
        ),

        //Balance
        Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amberAccent),
              child: Stack(
                children: [
                  const Positioned(
                    top: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balance Account"),
                        Text("Rp 0"),
                        Text("-")
                      ],
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Top Up")))
                ],
              ),
            )),

        //Menu
        //Banner (scroll)
        //Destination
        //Events
        //FAB
        const Positioned(
          bottom: 0,
          right: 0,
          child: HelpFab(),
        ),
      ]),
      bottomNavigationBar: const BottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          onPressed: () {
            Util().showToast(context, "Qris Button Triggered");
          },
          backgroundColor: Colors.transparent, // Button background
          elevation: 0,
          highlightElevation: 0,
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                width: 120,
                height: 120,
                'images/ic_qris.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
