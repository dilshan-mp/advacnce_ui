import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  bool isSwitched = false;
  bool isSecondSwitched = false;

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
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.black,
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/moon.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BedTime',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '11:00PM',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Repeat',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              Text(
                                'Mo,Tu,We,Th,Fr',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/Frame 929.png',
                      ),
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.black,
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/watch.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wake Up',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '7:00AM',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Repeat',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              Text(
                                'Cherry Blossom',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 100,
                //bottom: 504,
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
                              value: isSecondSwitched,
                              onChanged: (value) {
                                setState(
                                  () {
                                    isSecondSwitched = value;
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
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.black,
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/moon.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BedTime',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '11:00PM',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Repeat',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              Text(
                                'Mo,Tu,We,Th,Fr',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/Frame 929.png',
                      ),
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.black,
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/watch.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wake Up',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '7:00AM',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Repeat',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              Text(
                                'Cherry Blossom',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        ],
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
