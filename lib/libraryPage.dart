import 'dart:ui';
import 'package:advacnce_ui/alarm.dart';
import 'package:advacnce_ui/music.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  void _showUpgradeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color(0xFF09001F).withOpacity(0.9),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF02061C66),
                  blurRadius: 100.0,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  child: const Icon(
                    Icons.cancel_outlined,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 327,
                  height: 90,
                  child: const Text(
                    "Get the \n Full Experience",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 327,
                  height: 244,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildFeatureRow('7 Days free trial'),
                      buildFeatureRow('Experience our full library'),
                      buildFeatureRow('200+ soundscapes'),
                      buildFeatureRow('60+ meditations'),
                      buildFeatureRow('20+ sleep sounds'),
                      buildFeatureRow('Mix your own sleep sounds'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 62,
                  width: 327,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action to perform on button press
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(327, 62), // Fixed size
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        side: BorderSide(
                          color: Colors.white.withOpacity(0.3), // Border color
                          width: 0.5, // Border width
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: const Text(
                      "Your Button Text",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 62,
                  width: 327,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action to perform on button press
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(327, 62), // Fixed size
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        side: BorderSide(
                          color: Colors.white.withOpacity(0.3), // Border color
                          width: 0.5, // Border width
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: const Text(
                      "Your Button Text",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 327,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF531DAB),
                    ),
                    child: const Text(
                      'Start with free trial',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'privacy policy & Terms of Use',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  // Helper method to create a feature row
  static Widget buildFeatureRow(String feature) {
    return SizedBox(
      width: 202,
      height: 28,
      child: Row(
        children: [
          Image.asset('assets/Icon.png'),
          const SizedBox(width: 5),
          Text(
            feature,
            style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> listViewImagePaths = [
      'assets/Avatar.png',
      'assets/Autor IMG.png',
      'assets/Autor IMG3.png',
      'assets/Autor IMG5.png',
      'assets/Autor IMG7.png'
    ];
    final List<String> gridViewImagePaths = [
      'assets/Music Card2.png',
      'assets/Cover2.png',
      'assets/Cover.png',
      'assets/Music Card.png',
    ];

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/dbaa6c78d6e4b515243f412dbb9e1de4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 44),
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0x6609001F),
                      ),
                      onPressed: () => _showUpgradeDialog(context),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Upgrade",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: const Color(0x6609001F),
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff09001F),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(top: 210),
              child: Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listViewImagePaths.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 80,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(320),
                            color: Colors
                                .primaries[index % Colors.primaries.length],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              listViewImagePaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: gridViewImagePaths.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Music()),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors
                                  .primaries[index % Colors.primaries.length],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                gridViewImagePaths[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
