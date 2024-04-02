import 'package:flutter/material.dart';
import 'package:moneymanagement/app/modules/home/view/HomeView.dart';
import 'package:moneymanagement/app/utils/BottomNavigation.dart';
import 'package:moneymanagement/app/utils/NotFound.dart';

class ContainerCs extends StatefulWidget {
  @override
  _ContainerCsState createState() => _ContainerCsState();
}

class _ContainerCsState extends State<ContainerCs> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return HomeView();
      // case 1:
      //   return PertanyaanCs();
      // case 2:
      //   return UserRole();
      // case 3:
      //   return ProfileCS();
      default:
        return NotFound();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(_currentIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
