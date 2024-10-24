import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/decorator.dart';
import 'package:jakone_pay_submission/utils/toast.dart';
import 'package:jakone_pay_submission/views/component/bottom_navbar.dart';
import 'package:jakone_pay_submission/views/component/card_destination.dart';
import 'package:jakone_pay_submission/views/component/card_event.dart';
import 'package:jakone_pay_submission/views/component/card_menu.dart';
import 'package:jakone_pay_submission/views/component/help_fab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _destinationPageController = PageController();
  int _currentDestinationPage = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: Stack(children: [
              //background color
              Container(
                height: 1100,
                color: const Color.fromARGB(255, 239, 239, 239),
              ),
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
                      margin: const EdgeInsets.all(4),
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
                          onPressed: () {
                            Toast().showToast(context, "User Setting clicked");
                          },
                          icon: const Icon(Icons.edit_document),
                          color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
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
                        onPressed: () {
                          Toast().showToast(context, "Notification Clicked");
                        },
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
                  top: 210,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05,
                  child: Stack(
                    children: [
                      Container(
                        width: screenWidth * 0.9,
                        height: 100,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xFFFE5F5F), Color(0xFFFFF84B)],
                                end: Alignment(-1.0, 1),
                                begin: Alignment(-1.0, -1)),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                  offset: Offset(0, 5))
                            ]),
                      ),
                      Container(
                        width: (screenWidth * 0.9) - 20,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.white),
                        child: Stack(
                          children: [
                            const Positioned(
                              top: 20,
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
                                top: 0,
                                bottom: 0,
                                right: 0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                      onTap: () {
                                        Toast().showToast(
                                            context, "Top Up Button Clicked");
                                      },
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.only(right: 8),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: ButtonDecorator(),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Top Up",
                                          style: GoogleFonts.nunito(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800)),
                                        ),
                                      )),
                                ))
                          ],
                        ),
                      )
                    ],
                  )),

              //Menu
              Positioned(
                  top: 310,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05,
                  child: const Row(
                    children: [
                      CardMenu(
                          title: "Explore Jakarta",
                          imagePath: 'images/ic_location.png'),
                      CardMenu(
                          title: "Top Up JakCard",
                          imagePath: 'images/ic_wallet.png'),
                      CardMenu(
                          title: "JakCard Balance",
                          imagePath: 'images/ic_cc_color.png'),
                      CardMenu(
                          title: "Event", imagePath: 'images/ic_event.png'),
                    ],
                  )),
              //Banner (scroll)
              Positioned(
                  top: 440,
                  left: 0,
                  right: 0,
                  child: LayoutBuilder(builder: (context, constraints) {
                    double bannerWidth = constraints.maxWidth * 4 / 5;
                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Image(
                                width: bannerWidth,
                                height: 100,
                                image:
                                    const AssetImage("images/jkt_banner.png"));
                          }),
                    );
                  })),

              //Destination
              Positioned(
                top: 550,
                left: -2,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFF4747),
                                      Color(0xFFFC9842)
                                    ],
                                    end: Alignment(-1.0, 1),
                                    begin: Alignment(-1.0, -1)),
                                border: Border.all(color: Colors.yellow),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Image(
                                  image: AssetImage("images/ic_landmark.png")),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Let’s Go with Jakarta Tourist Pass",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                            const SizedBox(height: 5),
                            Text('a place not to be missed',
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            SizedBox(
                              height: 2,
                              width: MediaQuery.of(context).size.width / 10,
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                      Color(0xFFFE5F5F),
                                      Color(0xFFFC9842)
                                    ],
                                        end: Alignment(-1.0, 1),
                                        begin: Alignment(-1.0, -1))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 8),
                        TextButton(
                          onPressed: () {
                            Toast().showToast(context, "View all is Clicked");
                          },
                          child: Text(
                            'View all',
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Did You \nKnow?',
                              style: GoogleFonts.paytoneOne(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              'images/img_map.png',
                              height: 80,
                              width: 80,
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          // child: PageView.builder(
                          //   scrollDirection: Axis.horizontal,
                          //   controller: _destinationPageController,
                          //   itemCount: Dummy().getDestinations().length,
                          //   onPageChanged: (int index) {
                          //     setState(() {
                          //       _currentDestinationPage = index;
                          //     });
                          //   },
                          //   itemBuilder: (context, index) {
                          //     final destination =
                          //         Dummy().getDestinations()[index];
                          //     return CardDestination(
                          //         title: destination['title'],
                          //         imagePath: destination['imagePath']);
                          //   },
                          // ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CardDestination(
                                  title: 'Ancol Entrance Gate',
                                  imagePath: 'images/img_ancol.png',
                                ),
                                CardDestination(
                                  title: 'Monumen Nasional',
                                  imagePath: 'images/img_monas_small.png',
                                ),
                                CardDestination(
                                  title: 'Taman Mini',
                                  imagePath: 'images/img_ancol.png',
                                ),
                                CardDestination(
                                  title: 'Monumen Nasional',
                                  imagePath: 'images/img_monas_small.png',
                                ),
                                CardDestination(
                                  title: 'Taman Mini',
                                  imagePath: 'images/img_ancol.png',
                                ),
                                CardDestination(
                                  title: 'Monumen Nasional',
                                  imagePath: 'images/img_monas_small.png',
                                ),
                                CardDestination(
                                  title: 'Taman Mini',
                                  imagePath: 'images/img_ancol.png',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Events
              Positioned(
                top: 770,
                left: -2,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFF4747),
                                      Color(0xFFFC9842)
                                    ],
                                    end: Alignment(-1.0, 1),
                                    begin: Alignment(-1.0, -1)),
                                border: Border.all(color: Colors.yellow),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Image(
                                  image: AssetImage("images/ic_calendar.png")),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Events in Jakarta",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                            const SizedBox(height: 5),
                            Text('don’t miss the current events',
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            SizedBox(
                              height: 2,
                              width: MediaQuery.of(context).size.width / 10,
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                      Color(0xFFFE5F5F),
                                      Color(0xFFFC9842)
                                    ],
                                        end: Alignment(-1.0, 1),
                                        begin: Alignment(-1.0, -1))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 4),
                        TextButton(
                          onPressed: () {
                            Toast().showToast(context, "View all is Clicked");
                          },
                          child: Text(
                            'View all',
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    const Row(
                      children: [
                        SizedBox(width: 40),
                        // Scrollable Banner Section
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CardEvent(
                                  imagePath: 'images/image_event_1.png',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_2.jpeg',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_1.png',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_2.jpeg',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_1.png',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_2.jpeg',
                                ),
                                CardEvent(
                                  imagePath: 'images/image_event_1.png',
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //FAB
              const Positioned(
                bottom: 0,
                right: 0,
                child: HelpFab(),
              ),
            ]),
          )),
      bottomNavigationBar: const BottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          onPressed: () {
            Toast().showToast(context, "Qris Button Triggered");
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
