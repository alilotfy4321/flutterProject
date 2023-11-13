import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homePageControler/homePageStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagecubit extends Cubit<HomePagestates> {
  HomePagecubit() : super(HomePageLoadedstate());

  Color buttonColor = Colors.blue;
  bool isClick = false;

  onClickButton() {
    isClick = !isClick;
    if (isClick) {
      buttonColor = Colors.orange;
    } else {
      buttonColor = Colors.blue;
    }

    emit(HomePageChangestate());
  }
}
