import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;


  const CustomBottomNavbar({
    required this.currentIndex,
    required this.onTap

});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,

      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: currentIndex == 0 ? Colors.blueAccent : Colors.red,

          ),label: 'Home'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.travel_explore_rounded,
        color: currentIndex == 1 ? Colors.black : Colors.green,
        ),
        label: 'MyTrips'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard,
          color: currentIndex == 2 ? Colors.black : Colors.pinkAccent,
        ),
            label: 'MyWallet'
        ),
      ],
    );
  }
}
