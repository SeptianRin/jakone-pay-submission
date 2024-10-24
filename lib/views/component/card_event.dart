import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_submission/utils/decorator.dart';
import 'package:jakone_pay_submission/utils/toast.dart';

class CardEvent extends StatefulWidget {
  const CardEvent({super.key, required this.imagePath});
  final String imagePath;

  @override
  State<CardEvent> createState() => _CardDestinationState();
}

class _CardDestinationState extends State<CardEvent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color(0xFFFE5F5F),
          Color(0xFFFC9842),
          Color(0xFFFFFFFF),
          Color(0xFFFFFFFF)
        ], end: Alignment(-1.0, 1), begin: Alignment(-1.0, -1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: (MediaQuery.of(context).size.width * 0.6) - 16,
              height: 100,
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
              Toast().showToast(context, "More Info Clicked");
            },
            child: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(top: 8),
              decoration: ButtonDecorator(),
              child: Text(
                "More Information",
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
