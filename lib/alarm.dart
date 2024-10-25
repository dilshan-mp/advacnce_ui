import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              'assets/alarmcover.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 150),
            width: double.infinity,
            height: double.infinity,
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
            child: const Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70,
                bottom: 504,
              ),
              child: Container(
                width: 343,
                height: 236,
                decoration: BoxDecoration(
                  color: Color(0xff020725).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 343,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 53, 58, 86)
                            .withOpacity(0.7),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Work Day',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(
                                  () {
                                    isSwitched = value;
                                  },
                                );
                              },
                              activeColor: Colors.blue,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
