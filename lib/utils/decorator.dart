import 'package:flutter/material.dart';

BoxDecoration ButtonDecorator() {
  return BoxDecoration(
      gradient: const LinearGradient(
          colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
          end: Alignment(-1.0, 1),
          begin: Alignment(-1.0, -1)),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.yellow, width: 2));
}
