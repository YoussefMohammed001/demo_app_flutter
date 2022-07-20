import 'dart:ui';

import 'package:demo_app/forget_password.dart';
import 'package:demo_app/home_screen.dart';
import 'package:demo_app/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(10),

        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.emailAddress,
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
            const SizedBox(height: 1,),
            Container(
              alignment:   AlignmentDirectional.centerEnd,
              child: TextButton(onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );

              }, child: const Text("Forget Password")),
            ),


            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: const Text("Login")),
            ),
            const SizedBox(height: 1,),
            Container(
              width: double.infinity,
              child: OutlinedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: const Text("Register")),
            )
          ],
        ),
      )),
    );
  }
}
