import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10), child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Text("login screen"),
          TextField(
             decoration :InputDecoration(
                hintText: "Email",
                border:OutlineInputBorder(),
               ) ,  // InputDecoration
          ),  
          TextField(
             decoration :InputDecoration(
                hintText: "password",
                border:OutlineInputBorder(),
               ) ,  // InputDecoration
          ),  

          ElevatedButton(onPressed: () {}, child: Text("login"))


          
        ],
      ),),

    );
  }
}
