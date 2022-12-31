import 'package:shared_preferences/shared_preferences.dart';

enum LocalStorageType { bool, string, int, double, stringList }

class LocalStorage {
  static late SharedPreferences prefs;
  static void initialize() async {
    prefs = await SharedPreferences.getInstance();
  }

  static dynamic getValue(String key) {
    return prefs.get(key) ?? false;
  }

  static dynamic setValue(LocalStorageType type, String key, dynamic value) {
    switch (type) {
      case LocalStorageType.bool:
        prefs.setBool(key, value);
        break;
      case LocalStorageType.string:
        prefs.setString(key, value);
        break;
      case LocalStorageType.int:
        prefs.setInt(key, value);
        break;
      case LocalStorageType.double:
        prefs.setDouble(key, value);
        break;
      case LocalStorageType.stringList:
        prefs.setStringList(key, value);
        break;
      default:
    }
  }
}
