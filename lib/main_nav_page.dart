import 'package:flutter/material.dart';
import 'package:new_app/views/cart_page.dart';
import 'package:new_app/views/grid_view_page.dart';
import 'package:new_app/views/home.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({super.key});

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  int selectedIndex = 0;
  final _pages = [Homepage(),GridViewPage(), CartPage()];
  final navbarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store_outlined),label:'Groceries'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label:'cart Page'),
  ];

  void _onItemTapped (int index){
    setState(() {
      selectedIndex = index ;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _pages[selectedIndex],
    bottomNavigationBar: BottomNavigationBar(items: navbarItems, currentIndex: selectedIndex, onTap: _onItemTapped,),

    );  }
}