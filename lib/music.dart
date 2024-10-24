import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/123.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Bottom Container with color spread on the top side
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                // Gradient for color spread effect
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0XFF09001F)
                        .withOpacity(0.8), // Darker color at the top
                    const Color(0XFF09001F)
                        .withOpacity(1), // Fully transparent at the bottom
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Image.asset('assets/Name.png')),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset('assets/Audio Wave.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/Player Control.png')
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/Navbar.png',
            ),
          )
        ],
      ),
    );
  }
}
