import 'package:flutter/material.dart';
import 'package:jakone_pay_submission/utils/toast.dart';

class HelpFab extends StatelessWidget {
  const HelpFab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: InkWell(
        onTap: () {
          Toast().showToast(context, "Floating Action Button is Clicked");
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('images/fab_help.png'),
          ),
        ),
      ),
    );
  }
}
