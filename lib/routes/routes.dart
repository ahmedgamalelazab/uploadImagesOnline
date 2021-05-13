import '../Views/Screens/ProfileListScreen.dart';
import '../Views/Screens/UploadProfileScreen.dart';

class Routes {
  static routes() {
    return {
      UploadProfileScreen.PageRoute: (context) => UploadProfileScreen(),
      ProfileListScreen.PageRoute: (context) => ProfileListScreen(),
    };
  }

  static initialRoute() {
    return UploadProfileScreen.PageRoute;
  }
}
