import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color(0xff373856),
      unselectedItemColor: const Color(0xff747498),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.swipe_down_rounded),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Gráficas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: 'Users'
        ),
      ]

    );
  }
}


