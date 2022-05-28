// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:testProject/view/pages/home.dart';
import 'package:provider/provider.dart';
import '../constant/color_pallete.dart';
import '../viewmodel/all_vm.dart';

class Root extends StatefulWidget {
  @override
  RootState createState() => RootState();
}

class RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
