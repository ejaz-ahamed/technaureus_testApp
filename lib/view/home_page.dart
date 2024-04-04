import 'package:flutter/material.dart';
import 'package:technaureus_app/view/widgets/bottom_nav_widget.dart';
import 'package:technaureus_app/view/widgets/gridview_builder_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 80,
        leading: const CircleAvatar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                "assets/icons/ic_menu.png",
                width: 35,
                height: 35,
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                GridviewBuilderWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
