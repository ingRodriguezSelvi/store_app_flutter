import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.pinkAccent,
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontFamily: 'Hey-Comic'),
      unselectedItemColor: Colors.white.withOpacity(0.4),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled ),
          label: 'Home',
        ),
        BottomNavigationBarItem(

          icon: Icon(Icons.pets),
          label: 'Your Orders',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
