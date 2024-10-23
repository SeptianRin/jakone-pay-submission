import 'package:flutter/material.dart';

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
        height: 30,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(),
        ),
        notchMargin: 8.0,
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.orange),
                onPressed: () {
                  // Action for home button
                },
              ),
              const SizedBox(width: 30),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.orange),
                onPressed: () {
                  // Action for profile button
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
