import 'package:demo_app/home_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(title: Text("Reset Password"),),
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text("Enter Your Email to send you the code to reset your password", textAlign: TextAlign.center,

              ),
            )
            ,
            const SizedBox(height: 10,),
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
            const SizedBox(height: 5,),

            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReceivedCode()),
              );
            }, child: const Text("Send code"))
          ],
        ),
      ),

    );
  }
}


class ReceivedCode extends StatelessWidget {
  const ReceivedCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(


        child: Scaffold(

          appBar: AppBar(title: Text("Reset Password"),),
          body: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return"enter the code";
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next ,
                  keyboardType: TextInputType.number,
maxLength: 6,
                  decoration: const InputDecoration(
                    hintText: "Code",
                    labelText: "Code",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.code,
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetNewPassword()),
                  );
                }, child: const Text("Done"))
              ],
            ),
          ),

        ),
      ),
    );
  }
}


class SetNewPassword extends StatelessWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  suffixIcon: Icon(
                      Icons.remove_red_eye
                  ),

                  hintText: "New Password",
                  labelText: "New Password",
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
                  labelText: 'Confirm New Password',
                  hintText: "Confirm New Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.key,
                  ),
                ),
              ),
              const SizedBox(height: 1,),



              Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text("Set My New Password")),
              ),
              const SizedBox(height: 1,),

            ],
          ),
        ));


  }
}

