import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask1/utilities/commonWidgets.dart';
import 'loginscreen.dart';
import 'signup.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: mediaQuery.size.height * 1,
            width: mediaQuery.size.width * 1,
            decoration: BoxDecoration(
                color: Colors.deepOrange[600],
                borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft: Radius.circular(18))),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Logo(),
                Text(
                  "All your favourite designs",
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ORder from Your nearby best restuarant in the town.\n You can easily order from anywhere,anytime",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(offset: Offset(5.0,5.0),
                      blurRadius: 5.0,
                    color: Colors.black87.withOpacity(0.2),
                      )]
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            width: 1400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.23),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: GetStartedbutton(),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child:LoginButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

