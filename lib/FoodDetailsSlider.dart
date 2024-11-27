import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  var slideImage1;
  var slideImage2;
  var slideImage3;

  FoodDetailsSlider(
      {Key? key,
      @required this.slideImage1,
      @required this.slideImage2,
      @required this.slideImage3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
    );
  }
}
