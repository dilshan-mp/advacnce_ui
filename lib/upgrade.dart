import 'package:flutter/material.dart';

class UpgradePage extends StatelessWidget {
  const UpgradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF09001F), // Background color
          border: Border.all(
            width: 5, // Border width
            color: const Color(0xFF000000), // Border color
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF02061C66), // Shadow color with opacity
              offset: Offset(0, 0),
              blurRadius: 100, // Blur effect
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Upgrade Page",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
