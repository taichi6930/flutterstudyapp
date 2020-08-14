import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterstudyapp/utility/utility.dart';
import 'package:flutterstudyapp/view_model/home/home_view_model.dart';

// ignore: must_be_immutable
class HomeViewController extends StatelessWidget {
  HomeViewModel viewModel;

  HomeViewController() {
    viewModel = HomeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => viewModel,
      builder: (context, snapshot) {
        return Consumer<HomeViewModel>(
          builder: (_, model, __) {
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
                        model.bottomButtonArray.length,
                        (index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              onPressed: () {
                                model.addButtonNumber(index);
                              },
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.cyanAccent,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  model.bottomButtonArray[index].toString(),
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
          },
        );
      },
    );
  }
}
