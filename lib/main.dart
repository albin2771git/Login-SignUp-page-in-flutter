import 'dart:async';

import 'package:assignment1/signUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello There !!!",
            style: TextStyle(
                color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text('Automatic Identity Verification Which Enable You to '),
          Text("Verify Your Identity"),
          //Image(image: AssetImage("assets/images/splas2.webp")),
          Image.asset("assets/images/splas2.webp"),

          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  minimumSize: MaterialStateProperty.all(Size(220, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)))),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
              },
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    minimumSize: MaterialStateProperty.all(Size(220, 50 )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          )
        ],
      )),
    );
  }
}
