import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technaureus_app/models/homepage_model.dart';

List<HomePageModel> listofModels = [
  HomePageModel(title: 'Customers', icon: CupertinoIcons.group_solid),
  HomePageModel(title: 'Products', icon: CupertinoIcons.cube_box),
  HomePageModel(title: 'New Order', icon: Icons.add_chart),
  HomePageModel(title: 'Return Order', icon: CupertinoIcons.return_icon),
  HomePageModel(title: 'Add Payment', icon: Icons.payments_outlined),
  HomePageModel(title: "Today's Order", icon: CupertinoIcons.doc_plaintext),
  HomePageModel(
      title: "Today's Summary", icon: Icons.receipt_long),
  HomePageModel(title: 'Route', icon: Icons.route),
];