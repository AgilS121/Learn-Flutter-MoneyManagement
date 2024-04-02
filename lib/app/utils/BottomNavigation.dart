import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          fixedColor: Color.fromARGB(255, 101, 101, 101),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.co_present_outlined),
              label: 'Role',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
