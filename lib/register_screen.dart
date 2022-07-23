import 'dart:ffi';

import 'package:demo_app/home_screen.dart';
import 'package:demo_app/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(

              children: [
                const SizedBox(height: 10),
                const Text("Welcome! Create Account To Enjoy Our Service", style: TextStyle(fontSize:15,color: Colors.red,
                  fontWeight: FontWeight.bold,

                )),

                Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.center,

                    children: [
                      Expanded(
                        child: TextFormField(

                          textInputAction: TextInputAction.next ,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return"please enter your first name";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(

                            labelText: 'First Name',
                            hintText: "First Name",
                            border: OutlineInputBorder(),

                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.next ,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return"please enter your second name";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(

                            labelText: 'Second Name',
                            hintText: "Second Name",
                            border: OutlineInputBorder(),

                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next ,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return"please enter your email";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(

                          hintText: "Email",
                          labelText: "Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        textInputAction: TextInputAction.next ,
                        keyboardType: TextInputType.number,
                        maxLength: 11,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return"please enter your mobile number";
                          } else if(value.length < 11){
                            return"enter correct mobile number ";
//a
                          }
                          return null;
                        },
                        decoration: const InputDecoration(

                          hintText: "Mobile Number",
                          labelText: "Mobile Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
//comment
                        textInputAction: TextInputAction.next ,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return"please enter your password";
                          }
                          return null;
                        },

                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                              Icons.remove_red_eye
                          ),
                          labelText: 'Password',
                          hintText: "Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.key,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return"please confirm your password";
                          }
                          return null;
                        },

                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                              Icons.remove_red_eye
                          ),
                          labelText: 'Confirm Password',
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.key,
                          ),
                        ),
                      ),

                    ],
                  ),

                ),

                Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    children: [
                       Expanded(
                         child: ElevatedButton(
                            onPressed: () {
                             if(_formKey.currentState!.validate()){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => LoginScreen()),
                               );
                             }
                            },
                            child: const Text("Create Account",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11

                            ),

                            ),

                         ),
                       ),
                      SizedBox(width: 10,),





                      Expanded(
                        child: TextButton(onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );

                        }, child: const Text("already have account! Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 11

                          ),
                          maxLines: 1,
                        ),




                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),


        ),
      )
    );
  }
}
