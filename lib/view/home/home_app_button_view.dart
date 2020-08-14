import 'package:flutter/material.dart';
import 'package:flutterstudyapp/utility/utility.dart';

typedef HomeAppButtonViewCallback = void Function();

// ignore: must_be_immutable
class HomeAppButtonView extends StatelessWidget {
  final HomeAppButtonViewCallback callback;
  Size size;

  HomeAppButtonView(this.callback, Size size) {
    this.size = size;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffb4ffff),
      ),
      width: size.width,
      child: Column(
        children: [
          SpaceBox.height(32),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'TN　Platform',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceBox.height(),
        ],
      ),
    );
  }
}
