import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:technaureus_app/controller/homepage_controller.dart';
import 'package:technaureus_app/view/pages/customer_page.dart';
import 'package:technaureus_app/view/pages/product_page.dart';

class GridviewBuilderWidget extends HookWidget {
  const GridviewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int?>(null);

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
              selectedIndex.value = index;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => selectedIndex.value == 0
                        ? const CustomerPage()
                        : const ProductPage(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: selectedIndex.value == index
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
                      color: selectedIndex.value == index
                          ? Colors.white
                          : const Color(0xFF17479b),
                    ),
                    Text(
                      listofModels[index].title,
                      style: TextStyle(
                          color: selectedIndex.value == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
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
