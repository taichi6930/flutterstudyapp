import 'package:flutter/material.dart';

typedef HomeBottomButtonViewCallback = void Function(int);

// ignore: must_be_immutable
class HomeBottomButtonView extends StatelessWidget {
  final HomeBottomButtonViewCallback callback;
  List<int> bottomButtonArray;

  HomeBottomButtonView(this.callback, bottomButtonArray) {
    this.bottomButtonArray = bottomButtonArray;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff80deea),
      ),
      height: 110,
      child: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 4,
        children: List.generate(
          bottomButtonArray.length,
          (index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  callback(index);
                },
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.grey,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    bottomButtonArray[index].toString(),
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
    );
  }
}
