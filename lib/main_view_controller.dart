import 'package:flutter/material.dart';
import 'package:flutterstudyapp/utility/utility.dart';

class MainViewController extends StatefulWidget {
  MainViewController({Key key}) : super(key: key);

  @override
  _MainViewControllerState createState() => _MainViewControllerState();
}

class _MainViewControllerState extends State<MainViewController> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffb4ffff),
                ),
                width: size.width,
                child: Column(
                  children: [
                    SpaceBox.height(32),
                    Text(
                      'TN　Platform',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff80deea),
            ),
            height: 100,
            width: size.width,
          ),
        ],
      ),
    );
  }
}
