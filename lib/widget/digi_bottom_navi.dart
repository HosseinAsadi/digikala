import 'package:flutter/material.dart';
import 'package:flutter_education/pages/cart.dart';
import 'package:flutter_education/pages/category.dart';
import 'package:flutter_education/pages/home.dart';
import 'package:flutter_education/pages/profile.dart';
import 'package:flutter_education/utils/digiString.dart';

class DigiBottomNav extends StatefulWidget {
  @override
  _DigiBottomNavState createState() => _DigiBottomNavState();
}

class _DigiBottomNavState extends State<DigiBottomNav> {

  final pages = [
    Home(),
    Category(),
    Cart(),
    Profile(),
  ];

  int selectedPage = 0;

  BottomNavigationBarItem myItems(IconData icon, String label) =>
      BottomNavigationBarItem(
        icon: Icon(icon),
        label: label,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: selectedPage,
        onTap: (itemSelected){
          setState(() {
            selectedPage = itemSelected;
          });
        },
        items: [
          myItems(Icons.home, Strings.HOME),
          myItems(Icons.category, Strings.CATEGORY),
          myItems(Icons.shopping_cart, Strings.CART),
          myItems(Icons.person, Strings.PROFILE),
        ],
      ),
    );
  }
}
