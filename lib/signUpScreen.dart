import 'package:assignment1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool viewpassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          SizedBox(height: 120,),
          Text("SignUp",style: TextStyle(
            color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Create an Account its Free !"),
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
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right: 167  ),
              child: Text(" Conform Password ",style: TextStyle(fontSize: 18 ),),
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
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text("already have an account?"),
                    Text("Log in",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),


          ],)

        ],
      ),
    );
  }
}