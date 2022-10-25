import 'package:assignment1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    bool viewpassword=true;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 120,),
          Text("Login",style: TextStyle(
            color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Welcome Back ! login With your Credentials"),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(right: 260   ),
              child: Text("Email",style: TextStyle(fontSize: 18 ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 40,
              right: 40),
              child: TextField(
               
                 decoration: InputDecoration(
                       
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0)))),
              ),
            ),
            SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right: 230   ),
              child: Text("Password ",style: TextStyle(fontSize: 18 ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 40,
              right: 40),
              child: TextField(
                 obscuringCharacter: "*",

                obscureText: true,
                 decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState((){
                      if(viewpassword){
                        viewpassword=false;
                      }else{
                        viewpassword=true;
                      }
                    });
                    
                  }, icon: Icon(viewpassword==true ? Icons.remove_red_eye : Icons.password)),
                //  prefixIcon: const Icon(Icons.password_rounded),
                  label: Text("password"),
                       
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0)))),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(Size(220, 50 )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text("don't have an account?"),
                    Text("Sign Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),


          ],)

        ],
      ),
    );
  }
}