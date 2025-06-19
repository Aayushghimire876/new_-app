import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/models/fruit_model.dart';
import 'package:new_app/white_%20button%20.dart';

class FruitsDetailPage extends StatefulWidget {
  final FruitModel fruit;
  const FruitsDetailPage({super.key, required this.fruit});

  @override
  State<FruitsDetailPage> createState() => _FruitsDetailPageState();
}

class _FruitsDetailPageState extends State<FruitsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fruits Detail Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //this is image, fruit details column, with scrollable....
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset(
                    widget.fruit.imageUrl,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rs. ${widget.fruit.price}",
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Icon(
                              Icons.favorite_outline,
                              size: 26,
                              color: Colors.red,
                            ),
                          ],
                        ),

                        Text(
                          widget.fruit.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            RatingBarIndicator(
                              rating: 3,
                              itemCount: 5,
                              itemSize: 30,
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: Colors.amber),
                            ),
                            Text(
                              '(89 Reviews)',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 5,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      child: WhiteButton(
                        buttonText: "Quantity",
                        textStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        isSmall: false,
                      ),
                    ),
                    InkWell(
                      child: WhiteButton(
                        buttonText: "-",
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    WhiteButton(
                      buttonText: '3',
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      child: WhiteButton(
                        buttonText: "+",
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Add To Cart",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Icon(Icons.shop, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
