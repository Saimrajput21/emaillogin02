import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utilities/commonWidgets.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      body: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Align(
                alignment: Alignment.topLeft,
                child: MyBackButton()),
            Text("Flutter Amplify Quickstart",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(offset: Offset(2.0, 2.0), blurRadius: 5.0),
                    ])),
            Text("User Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            Container(
              height: 200,
              width: 200,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/saim.png'),
              ),
            ),
            Text("Name",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(offset: Offset(2.0, 2.0), blurRadius: 5.0),
                    ])),
            TextField(
              textAlign: TextAlign.center,
            ),
            Text("Lcation",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(offset: Offset(2.0, 2.0), blurRadius: 5.0),
                    ])),
            TextField(
              textAlign: TextAlign.center,
            ),
            Text("Favourite Language",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(offset: Offset(2.0, 2.0), blurRadius: 5.0),
                    ])),
            TextField(
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.save,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
