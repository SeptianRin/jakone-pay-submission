import 'package:flutter/material.dart';
import 'package:jakone_pay_submission/utils/toast.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomAppBar(
        height: 50,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(),
        ),
        notchMargin: 8.0,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Toast().showToast(context, "Clicked Home");
                },
                child: const Image(
                  image: AssetImage('images/ic_home.png'),
                ),
              ),
              const SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Toast().showToast(context, "Clicked Profile");
                },
                child: const Image(
                  image: AssetImage('images/ic_user.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
