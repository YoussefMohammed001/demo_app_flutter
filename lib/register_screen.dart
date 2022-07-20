import 'package:demo_app/home_screen.dart';
import 'package:demo_app/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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

                      decoration: const InputDecoration(

                        hintText: "Phone Number",
                        labelText: "Phone Number",
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
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


      )
    );
  }
}
