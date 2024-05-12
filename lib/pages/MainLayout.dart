import 'package:coffeeapp/pages/DummyPage.dart';
import 'package:coffeeapp/pages/HomePage.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: [
          HomePage(),
          DummyPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        selectedItemColor: Colors.green,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(
                page,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut
            );
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
            label: 'abc'
          )
        ],
      ),
    );
  }
}
