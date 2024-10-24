import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/toast.dart';

class CardMenu extends StatefulWidget {
  const CardMenu({super.key, required this.title, required this.imagePath});
  final String title;
  final String imagePath;

  @override
  State<CardMenu> createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Toast().showToast(context, "${widget.title} is Clicked");
      },
      child: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Card Icon
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFFFFF84B), Color(0xFFFE5F5F)],
                      end: Alignment(-1.0, 1),
                      begin: Alignment(-1.0, -1)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFFFFE3CA), Color(0xFFFFFFFF)],
                      end: Alignment(-1.0, 1),
                      begin: Alignment(-1.0, -1)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image(
                  width: 60,
                  height: 60,
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),

          //Text
          Text(
            widget.title,
            style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w500)),
          )
        ],
      )),
    );
  }
}
