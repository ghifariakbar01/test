import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testProject/view/widgets/display.dart';
import 'package:provider/provider.dart';
import '../../constant/color_pallete.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

Map<String, dynamic> basket;

// bool _isLoading = true;
bool enableLink = false;

class HomePageState extends State<HomePage> {
  Future<bool> onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text(
              'Keluar Aplikasi?',
              style: TextStyle(
                  color: ColorPalette.btnNewColor, fontWeight: FontWeight.bold),
            ),
            content: const Text('Anda akan keluar dari Aplikasi'),
            actions: [
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Tidak'),
              ),
              FlatButton(
                onPressed: () => SystemNavigator.pop(),
                child: const Text('Iya'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return onWillPop();
        },
        child: DisplayPhoto());
  }
}
