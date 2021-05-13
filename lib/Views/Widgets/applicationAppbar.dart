import 'package:flutter/material.dart';

PreferredSize applicationAppBar(
    double deviceHeight, double deviceWidth, String title) {
  return PreferredSize(
    preferredSize: Size(deviceWidth, deviceHeight * 0.0691144708423326),
    child: AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff45475A),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: deviceHeight * 0.031317494600432),
      ),
    ),
  );
}
