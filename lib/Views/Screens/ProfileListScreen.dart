import 'package:flutter/material.dart';
import 'package:upload_images/Views/Widgets/applicationAppbar.dart';

class ProfileListScreen extends StatelessWidget {
  static const String PageRoute = "/ProfileListScreen";
  const ProfileListScreen({Key? key}) : super(key: key);
  final List<String> titles = const ["Ahmed gamal", "bla bla", "bla balaaaa"];
  final List<String> subtitles = const ["blabla", "bla bla", "bla balaaaa"];

  @override
  Widget build(BuildContext context) {
    final deviceHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: applicationAppBar(deviceHeight, deviceWidth, "Profiles"),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) => Container(
          height: deviceHeight * 0.0875161987041037,
          // color: Colors.red,
          margin: EdgeInsets.only(
              bottom: deviceHeight * 0.00975161987041037,
              top: deviceHeight * 0.00975161987041037),
          child: Card(
            child: ListTile(
              leading: Container(
                height: deviceHeight * 0.0655161987041037,
                width: deviceHeight * 0.0655161987041037,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
            ),
          ),
        ),
      ),
    );
  }
}
