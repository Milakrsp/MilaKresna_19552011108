import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:milakresnapebriani19552011108/main.dart';
import 'package:milakresnapebriani19552011108/main_page.dart';
import 'package:flutter/material.dart';
import 'package:milakresnapebriani19552011108/time_page.dart';
import 'dashboard_page.dart';
import 'date_page.dart';



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: [
            DasboarPage(),
            DatePage(),
            TimePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.blueAccent,
            ),
          BottomNavyBarItem(
              icon: Icon(Icons.date_range),
              title: Text('Date'),
              activeColor: Colors.redAccent,
              inactiveColor: Colors.redAccent,
            ),
          BottomNavyBarItem(
              icon: Icon(Icons.timer),
              title: Text('Time'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.greenAccent,
            )    
        ],
      ),
    );
  }
}
