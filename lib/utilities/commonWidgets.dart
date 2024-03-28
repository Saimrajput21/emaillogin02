import 'package:flutter/material.dart';
import 'package:uitask1/utilities/constants.dart';

import '../Screens/Portfolio.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Icon(Icons.arrow_circle_left_sharp,color: Colors.white,size: MyConstantValues.myIconSizes,),
    );
  }
}

class MyCommonSizedBox extends StatelessWidget {
  double height;
    MyCommonSizedBox(this.height, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class MyDataContainer extends StatelessWidget {
  String? text;
   MyDataContainer({this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5,color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextField(
          decoration: InputDecoration(),
          controller: TextEditingController(text: text??"Enter your name"),
        ),
      ),
    ) ;
  }
}
class NamingText extends StatelessWidget {
  String namingtextvalue;
   NamingText(this.namingtextvalue ,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(right: 250),
      child: Text(namingtextvalue??"NAME",
           style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width:300,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 2.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Portfolio()),
          );

        },
        child: Text(
          "Login",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
    );
  }
}
class GetStartedbutton extends StatelessWidget {
  const GetStartedbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
        child: Text(
          "Get Started",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        )
    );
  }
}
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('assets/images/saim.png'),
      ),
    );
  }
}




