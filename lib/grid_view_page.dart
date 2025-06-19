import 'package:flutter/material.dart';
import 'package:new_app/constants/fruits_constants.dart';
import 'package:new_app/fruits_detail_page.dart';
import 'package:new_app/models/fruit_model.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final fruitList = [
    FruitModel(name: 'Apple', price: '200', imageUrl: FruitsContants.appleUrl),
    FruitModel(name: 'Banana', price: '60', imageUrl: FruitsContants.bananaUrl),
    FruitModel(
      name: 'Coconut',
      price: '70',
      imageUrl: FruitsContants.coconutUrl,
    ),
    FruitModel(
      name: 'Watermelon',
      price: '300',
      imageUrl: FruitsContants.watermelonUrl,
    ),
    FruitModel(
      name: 'Strawberry',
      price: '500',
      imageUrl: FruitsContants.strawberryUrl,
    ),
    FruitModel(name: 'Grapes', price: '80', imageUrl: FruitsContants.grapesUrl),
    FruitModel(
      name: 'Avocardo',
      price: '1000',
      imageUrl: FruitsContants.avocardoUrl,
    ),
    FruitModel(name: 'Mango', price: '170', imageUrl: FruitsContants.mangoUrl),
    FruitModel(name: 'Lichi', price: '250', imageUrl: FruitsContants.lichiUrl),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Fruit List:"))),
      body: Column(
        children: [
          //serch bar...
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search fruit:",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
              ),
              itemCount: fruitList.length,
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                final fruit = fruitList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FruitsDetailPage(fruit: fruit),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          fruitList[index].imageUrl,
                          height: 50,
                          width: 50,
                        ),
                        Text(fruitList[index].name),
                        Text("Rs: ${fruitList[index].price}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
