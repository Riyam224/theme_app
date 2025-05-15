// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:theme_app/features/home/views/favorite_view.dart';
import 'package:theme_app/features/home/views/home_view.dart';
import 'package:theme_app/features/home/views/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _index = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchView(),
    const FavoriteView(),
  ];

  void _tabToggle(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],

      // FAB in center and floating above navbar
      floatingActionButton: FloatingActionButton(
        onPressed: () => _tabToggle(1), // Index of center (search)
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(_index == 0 ? Icons.home : Icons.home_outlined),
              onPressed: () => _tabToggle(0),
            ),
            const SizedBox(width: 48), // space for floating action button
            IconButton(
              icon: Icon(_index == 2 ? Icons.person : Icons.person_outline),
              onPressed: () => _tabToggle(2),
            ),
          ],
        ),
      ),
    );
  }
}
