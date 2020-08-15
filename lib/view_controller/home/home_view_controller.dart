import 'package:flutter/material.dart';
import 'package:flutterstudyapp/utility/utility.dart';

class HomeViewController extends StatefulWidget {
  HomeViewController({Key key}) : super(key: key);

  @override
  _HomeViewControllerState createState() => _HomeViewControllerState();
}

class _HomeViewControllerState extends State<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var arr = ["1", "2", "3", "4"];
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
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff80deea),
            ),
            height: 110,
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 4,
              children: List.generate(
                arr.length,
                (index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: () {
                        print(arr[index]);
                      },
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.grey,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          arr[index],
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
