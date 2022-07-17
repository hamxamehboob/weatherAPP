import 'package:flutter/material.dart';
import 'package:untitled/Model/Geolocator.dart';
import 'package:untitled/Screens/HomeScreen.dart';

import 'Default_Cities/Karachi.dart';
import 'SelectionScreen.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 68),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Hello,",
                style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontSize: 57,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("let’s set you",
                  style: TextStyle(
                      color: Color(0xFFBFBFBF),
                      fontSize: 57,
                      fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("weather..",
                  style: TextStyle(
                      color: Color(0xFF6DC9EF),
                      fontSize: 57,
                      fontWeight: FontWeight.w600)),
            ),
            Image.asset("assets/images/landingImage.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 21),
              child: Row(children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "Select Current Location",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 59),
                            child: GestureDetector(
                              onTap: () {
                                getcurrentPosistion();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => HomeScreen()));
                              },
                              child:
                                  Image.asset("assets/images/back-arrow.png"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 21),
              child: Row(children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF6DC9EF),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "Select City",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 151),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SelectionScreen()));
                              },
                              child: Image.asset("assets/images/arrow.png"),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
