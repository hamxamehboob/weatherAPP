import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/Model/URLS.dart';
import 'package:intl/intl.dart';
import '../../Model/forecastresponse.dart';


class Barcelona extends StatefulWidget {
  Barcelona({Key? key}) : super(key: key);


  @override
  State<Barcelona> createState() => _BarcelonaState();
}

class _BarcelonaState extends State<Barcelona> {
  bool isLoading = false;
  APIResponse? data;
  final dateFormat = DateFormat('h:mm a');


  @override
  initState() {
    super.initState();
    getlocation();
  }

  Future getlocation() async {
    setState(() {
      isLoading = true;
    });
    String url = Constants.weatherEndpoint + "Barcelona";
    Uri uri = Uri.parse(url);
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        data = APIResponse.fromJson(jsonDecode(response.body));
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print(e);
    }finally{
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double _mediaQuery = MediaQuery.of(context).size.height;
    return Scaffold(

      body: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width/0.65,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/weather_image1.png"),
                  fit: BoxFit.fill,
                )),
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
                          child: Image.asset(
                              "assets/images/reload_icon.png"),
                        ),
                        const SizedBox(
                          width: 91,
                        ),
                        Text(
                          data?.location?.name ?? '',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.width/12
                        ),
                        Image.asset("assets/images/home_arrow.png"),
                      ],
                    )),
                SizedBox(
                    height:
                    (MediaQuery.of(context).size.height / 6) - 100),
                Padding(
                  padding: const EdgeInsets.only(top: 73),
                  child: Container(
                    child: Text(
                      data?.current?.tempC?.round().toString()??  '' + '',
                      style: TextStyle(
                          fontSize: 99,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "${data?.current?.condition?.text?.toString()??''}",
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
            padding: const EdgeInsets.only(top: 600),
            child: Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.5,
                  ),
                  Text(
                    data?.location?.name?? '',
                    style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  Text(","),
                  Text(
                    data?.location?.country??  '',
                    style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
                padding: const EdgeInsets.only(top: 655),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                        24,
                            (index) => Column(
                          children: [

                            Text(
                              dateFormat.format(DateTime.parse("${data?.forecast?.forecastday?[0].hour?[index].time?.toString()?? ''}")),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Image.network('https:${data?.forecast?.forecastday?[0].hour?[index].condition?.icon}'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "${data?.forecast?.forecastday?[0].hour?[index].tempC}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
