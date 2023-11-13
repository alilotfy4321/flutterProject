import 'package:flutter/material.dart';

// snackBar--------
dynamic snackPar(dynamic context, Widget text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: text,
  ));
}

///////////textButton------------
Widget button({
  double width = 150,
  Color bgcolor = Colors.blue,
  double radius = 100,
  dynamic onClic,
  String text = '',
  Color txcolor = Colors.white,
}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: TextButton(
      onPressed: onClic,
      child: Text(
        text,
        style: TextStyle(
          color: txcolor,
        ),
      ),
    ),
  );
}

//--------
Widget vSpace({double height = 20}) {
  return SizedBox(
    height: height,
  );
}
