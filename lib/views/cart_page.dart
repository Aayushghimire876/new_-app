import 'package:flutter/material.dart';
import 'package:new_app/constants/fruits_constants.dart';
import 'package:new_app/models/fruit_model.dart';
import 'package:new_app/views/grid_view_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CartPage"), centerTitle: true),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "Apple",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "NotoSans",
              ),
            ),
            leading: Image.asset(
              FruitsContants.appleUrl,
              width: 80,
              height: 80,
            ),
            subtitle: Text(
              "Rs.200",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            trailing: Icon(Icons.delete),
          );
        },
      ),
    );
  }
}
