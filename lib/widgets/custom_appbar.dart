import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      title: Text(title),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
      ],
    );
  }
}
