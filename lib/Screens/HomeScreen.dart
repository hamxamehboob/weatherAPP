import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/weather_image.png"),
                    fit: BoxFit.fitHeight)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Image.asset("assets/images/reload_icon.png"),
                        ),
                        SizedBox(
                          width: 91,
                        ),
                        Text(
                          "Australia",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Image.asset("assets/images/home_arrow.png"),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 73),
                  child: Container(
                    child: Text(
                      "12°",
                      style: TextStyle(
                          fontSize: 99,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    "Night, Clear Sky",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 645),
            child: Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Row(
                children: const [
                  Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(width: 156,),
                  Text("Sydney, Australia", style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(5, (index) => Column(
                  children: [
                    Text("NOW",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    Image.asset("assets/images/weather_icon.png"),
                    SizedBox(height:12 ,),
                    Text("22",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),)
                  ],
                ))
              ],
            )
          )
        ],
      ),
    );
  }
}
