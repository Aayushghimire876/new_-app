import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("Homepage")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            CircleAvatar(radius: 60, child: Icon(Icons.person, size: 60)),
            Text(
              "CodingLab",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "YouTuber & Blogger ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            //media links here.....
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.asset("assest/facebook-circle-logo.png"),
                ),
                CircleAvatar(
                  radius: 20,
                  child: Image.asset("assest/instgramlogo.png"),
                ),
                CircleAvatar(
                  radius: 20,
                  child: Image.asset("assest/twittericon.png"),
                ),
                CircleAvatar(
                  radius: 20,
                  child: Image.asset("assest/yticon.png"),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "Subscribe",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "Message",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),

            //like & share section here.....
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [Icon(Icons.heart_broken), Text("60K")]),
                SizedBox(
                  height: 15,
                  child: VerticalDivider(width: 18, color: Colors.grey),
                ),
                Row(children: [Icon(Icons.message), Text("50K")]),
                SizedBox(
                  height: 15,
                  child: VerticalDivider(width: 18, color: Colors.grey),
                ),
                Row(children: [Icon(Icons.share), Text("20K")]),
                SizedBox(
                  height: 15,
                  child: VerticalDivider(width: 18, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
