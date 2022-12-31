import '/helpers/localstorage_helpers.dart';

class LoginServices {
  static bool getLogin() {
    LocalStorage.setValue(LocalStorageType.bool, "isLogin", true);
    return true;
  }

  static bool getLogout() {
    LocalStorage.setValue(LocalStorageType.bool, "isLogin", false);
    return true;
  }
}
