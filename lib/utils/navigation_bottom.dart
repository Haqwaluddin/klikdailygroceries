import 'package:flutter/material.dart';
import 'package:klikdailygroceries/cart/cart_view.dart';
import 'package:klikdailygroceries/home/home_view.dart';
import 'package:klikdailygroceries/profile/profile_view.dart';
import 'package:klikdailygroceries/utils/color.dart';

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({Key? key}) : super(key: key);

  @override
  _MainBottomClassState createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    new HomeView(),
    new CartView(),
    new Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Icon(
                  Icons.home,
                ),
                height: 10,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Icon(
                  Icons.add_shopping_cart,
                ),
                height: 10,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Icon(
                  Icons.account_circle_rounded,
                ),
                height: 10,
              ),
              label: ""),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: textcolor2, size: 30),
        // selectedItemColor: textcolor2,
        unselectedIconTheme: IconThemeData(color: Colors.grey,size: 25),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}