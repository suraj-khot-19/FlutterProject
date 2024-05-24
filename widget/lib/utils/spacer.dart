import 'package:flutter/material.dart';

Widget addVerticleSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addGreySpacer(double height) {
  return Container(
    decoration: BoxDecoration(color: Colors.grey[200]),
    height: height,
    width: double.infinity,
  );
}
