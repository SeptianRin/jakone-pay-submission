import 'package:flutter/material.dart';

class Toast {
  void showToast(BuildContext context, String message) {
    // Find the overlay
    OverlayState? overlayState = Overlay.of(context);
    // Create an overlay entry
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 50.0,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8), // Background color
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    // Insert the overlay entry into the overlay
    overlayState.insert(overlayEntry);

    // Remove the overlay entry after 1 seconds
    Future.delayed(const Duration(seconds: 1), () {
      overlayEntry.remove();
    });
  }
}
