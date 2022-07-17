import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomeScreen.dart';
import '../Model/Geolocator.dart';
import 'Default_Cities/Barcelona.dart';
import 'Default_Cities/Karachi.dart';
import 'Default_Cities/London.dart';
import 'Default_Cities/Sydney.dart';
import 'landingScreen.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Landing()));
                },
                child: Image.asset("assets/images/back.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "Select City",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 18),
                      hintText: "Enter your city name",
                      hintStyle: const TextStyle(
                          color: Color(0xFFA8A8A8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {
                            getcurrentPosistion();
                          },
                          child: Image.asset("assets/images/location_icon.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          getcurrentPosistion();
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text(
                            "Current Location",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Karachi()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Karachi,Pakistan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Sydney()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Sydney, Australia",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Barcelona()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Barcelona, Argentina",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => London()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "London, England",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
