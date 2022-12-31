import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:full_solicitudes/helpers/localstorage_helpers.dart';

class Autoload {
  Autoload() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    LocalStorage.initialize();
  }
}
