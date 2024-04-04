import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technaureus_app/theme/theme.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 13,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        showUnselectedLabels: true,
        unselectedItemColor: AppTheme.appThemeColor,
        selectedItemColor: AppTheme.appThemeColor,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppTheme.appThemeColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_chart,
                size: 24,
                color: AppTheme.appThemeColor,
              ),
              label: 'New Order'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.cart,
                size: 24,
                color: AppTheme.appThemeColor,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.return_icon,
                size: 24,
                color: AppTheme.appThemeColor,
              ),
              label: 'Return order'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.group_solid,
                size: 24,
                color: AppTheme.appThemeColor,
              ),
              label: 'Customers'),
        ],
      ),
    );
  }
}
