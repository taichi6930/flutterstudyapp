import 'package:flutter/material.dart';
import 'package:flutterstudyapp/view/home/home_bottom_button_view.dart';
import 'package:flutterstudyapp/view/home/home_app_button_view.dart';
import 'package:provider/provider.dart';
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
                    child: HomeAppButtonView(
                      () {},
                      size,
                    ),
                  ),
                  HomeBottomButtonView(
                    (index) => model.addButtonNumber(index),
                    model.bottomButtonArray,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void addButtonNumber(model, index) {
    model.addButtonNumber(index);
  }
}
