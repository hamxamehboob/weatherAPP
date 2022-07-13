import 'package:flutter/material.dart';

import 'landingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const Landing())));
  }
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 355),
            ),
            Center(
              child: Image.asset(
                "assets/images/SplashImage.png",
                // height: MediaQuery.of(context).size.height/4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/3.5,
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
