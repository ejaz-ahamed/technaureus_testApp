import 'package:flutter/material.dart';
import 'package:technaureus_app/theme/theme.dart';

class CustomersListWidget extends StatelessWidget {
  const CustomersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: 115,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 7, spreadRadius: 1),
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.red),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                width: 1,
                height: 100,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Colors.black,
                      Colors.transparent
                    ])),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nesto',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text(
                    'ID: 12',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const Text(
                    'West palazhi, cal, ker',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  RichText(
                      text: const TextSpan(
                          text: 'Due Amount:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: [
                        TextSpan(
                            text: ' \$500', style: TextStyle(color: Colors.red))
                      ]))
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: AppTheme.appThemeColor,
                      child: Center(
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/icons/ic_whatsapp.png',
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
