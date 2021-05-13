import 'package:flutter/material.dart';

Widget profileImagePicker(double deviceHeight, double deviceWidth) {
  return Container(
    height: deviceHeight * 0.1911447084233261,
    width: deviceHeight * 0.1911447084233261,
    // color: Color(0xff45475A),
    child: Stack(
      children: [
        Container(
          height: deviceHeight * 0.1911447084233261,
          width: deviceHeight * 0.1911447084233261,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: deviceHeight * 0.0453563714902808,
            width: deviceHeight * 0.0453563714902808,
            // color: Colors.white,
            child: CircleAvatar(
              radius: deviceHeight * 0.0453563714902808,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                "assets/images/upload_min_size.png",
              ),
              child: ElevatedButton(
                child: Container(),
                onPressed: () {
                  //! this is where we will use the ImagePicker Api
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
