import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 355),
            ),
            Center(
              child: Image.asset(
                "assets/images/SplashImage.png",
                width: 129,
              ),
            ),
            SizedBox(
              height: 274,
            ),
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 98) ,
                ),
                Text(
                  "Powered By Tech Idara",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                )
              ],
            )
          ],
        ));
  }
}
