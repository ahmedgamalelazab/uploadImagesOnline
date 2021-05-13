import 'package:flutter/material.dart';

import '../Widgets/addProfile%20widgets/profileWidget.dart';
import '../Widgets/applicationAppbar.dart';
import 'ProfileListScreen.dart';

class UploadProfileScreen extends StatelessWidget {
  static const String PageRoute = "/UploadProfileScreen";
  const UploadProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    final deviceWidth = (MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: applicationAppBar(deviceHeight, deviceWidth, "Add Profile"),
      body: Container(
        alignment: Alignment.center,
        width: deviceWidth,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profileImagePicker(deviceHeight, deviceWidth),
              Container(
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: deviceHeight * 0.0647948164146868),
                        width: deviceWidth * 0.8457943925233645,
                        child: formComponet(
                            deviceHeight, Icons.person, "User Name"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: deviceHeight * 0.0334773218142549),
                        width: deviceWidth * 0.8457943925233645,
                        child: formComponet(
                            deviceHeight, Icons.person, "User Ttitle"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: deviceHeight * 0.0334773218142549),
                        width: deviceWidth * 0.8457943925233645,
                        child: formComponet(
                            deviceHeight, Icons.person, "Sub Title"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: deviceHeight * 0.0334773218142549),
                        width: deviceWidth * 0.8457943925233645,
                        height: deviceHeight * 0.0654,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff45475A)),
                          ),
                          onPressed: () {
                            //! here we will code the transition state
                            Navigator.of(context)
                                .pushNamed(ProfileListScreen.PageRoute);
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: deviceHeight * 0.0358790496760259,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder borderStyle(Color color, double width) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff707070), width: 1.0),
  );
}

Widget formComponet(double deviceHeight, IconData icon, String label) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        size: deviceHeight * 0.0358790496760259,
        color: Color(0xff707070),
      ),
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: deviceHeight * 0.0218790496760259,
      ),
      enabledBorder: borderStyle(Color(0xff707070), 1),
      focusedBorder: borderStyle(Color(0xff707070), 1),
      disabledBorder: borderStyle(Color(0xff707070), 1),
    ),
  );
}
