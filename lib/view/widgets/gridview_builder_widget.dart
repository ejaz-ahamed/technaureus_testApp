import 'package:flutter/material.dart';
import 'package:technaureus_app/controller/homepage_controller.dart';

class GridviewBuilderWidget extends StatefulWidget {
  const GridviewBuilderWidget({super.key});

  @override
  State<GridviewBuilderWidget> createState() => _GridviewBuilderWidgetState();
}

class _GridviewBuilderWidgetState extends State<GridviewBuilderWidget> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 18,
            mainAxisExtent: 150,
            crossAxisSpacing: 12),
        itemCount: 8,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: selectedIndex == index
                      ? const Color(0xFF17479b)
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15, color: Colors.grey.withOpacity(.30))
                  ]),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      listofModels[index].icon,
                      size: 40,
                      color: selectedIndex == index
                          ? Colors.white
                          : const Color(0xFF17479b),
                    ),
                    Text(
                      listofModels[index].title,
                      style: TextStyle(
                          color: selectedIndex == index
                              ? Colors.white
                              : const Color(0xFF17479b),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
