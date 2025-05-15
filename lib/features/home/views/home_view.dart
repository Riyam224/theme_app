// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/core/theming/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Food App"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.dark_mode,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: Provider.of<ThemeProvider>(context).toggleTheme,
          ),
        ],
      ),
      body: Center(child: Text("Welcome")),
    );
  }
}
