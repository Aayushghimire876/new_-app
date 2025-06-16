import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.grey[600]),
        child: Column(
          children: [
            Row(
              spacing: 20,
              children: [
                CircleAvatar(radius: 35, child: Icon(Icons.person_outline)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Ayush"),
                    Text("Age:22"),

                    Text("Address:Biratnagar"),
                  ],
                ),
              ],
            ),
            Divider(thickness: 1.5, color: Colors.black),

            Row(
              spacing: 5,
              children: [
                Icon(Icons.public_outlined),
                Text("Https://www.google.com"),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Icon(Icons.mail_outline),
                Text("aayushghimire2001@gmail.com"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
