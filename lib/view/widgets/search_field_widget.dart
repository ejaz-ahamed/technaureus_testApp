import 'package:flutter/material.dart';
import 'package:technaureus_app/theme/theme.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isCustomer;
  const SearchFieldWidget(
      {super.key, required this.controller, required this.isCustomer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            labelText: 'Search',
            labelStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(60),
            ),
            suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: isCustomer
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.qr_code_2),
                          SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: IconButton(
                                style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(0)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppTheme.appThemeColor)),
                                onPressed: null,
                                icon: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )),
                          )
                        ],
                      )
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.qr_code_2),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '|',
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Fruits',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          )
                        ],
                      ))),
      ),
    );
  }
}
