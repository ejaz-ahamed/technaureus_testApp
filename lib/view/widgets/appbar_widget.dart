import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget(
      {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(fontSize: 20, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: null,
              icon: RotatedBox(
                quarterTurns: 2,
                child: Image.asset(
                  'assets/icons/ic_menu.png',
                  height: 24,
                ),
              ),
            ),
          ],
        ),
       );
  }
}
