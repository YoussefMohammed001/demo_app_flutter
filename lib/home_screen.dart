import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(title: const Text("Home Screen")),
      floatingActionButton: FloatingActionButton(onPressed:() {
        counter++;
        print(counter);
        setState((){});



      },
      child: const Icon(Icons.add, color: Colors.white,),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter : ${counter} ",
            style:    TextStyle(fontSize: 23, color: Colors.red),
            ),
            TextButton(onPressed: () {
              counter =0;
              setState((){});

            }, child: Text("reset counter"))
          ],
        ),

      ),

    );
  }
}
