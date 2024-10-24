import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/decorator.dart';
import 'package:jakone_pay_submission/utils/toast.dart';

class CardDestination extends StatefulWidget {
  const CardDestination(
      {super.key, required this.title, required this.imagePath});
  final String? title;
  final String? imagePath;

  @override
  State<CardDestination> createState() => _CardDestinationState();
}

class _CardDestinationState extends State<CardDestination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              widget.imagePath ?? "images/ic_landmark.png",
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.title ?? "Tujuan Wisata",
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w700)),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: InkWell(
                onTap: () {
                  Toast()
                      .showToast(context, "Detail Destination Button Clicked");
                },
                child: Container(
                  height: 20,
                  width: 50,
                  decoration: ButtonDecorator(),
                  alignment: Alignment.center,
                  child: Text(
                    "Detail",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w700)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
