import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:full_solicitudes/autoloads.dart';
import 'package:full_solicitudes/config/app_config.dart';
import 'package:full_solicitudes/pages/authorization/login.dart';
import 'package:full_solicitudes/pages/home.dart';

import 'helpers/localstorage_helpers.dart';

void main() {
  Autoload();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: AppConfig.appMode == 'debug' ? true : false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LocalStorage.getValue("isLogin") ? const Home() : const Login(),
        routes: <String, WidgetBuilder>{
          '/Login': (BuildContext context) => const Login(),
          '/Home': (BuildContext context) => const Home(),
        },
      ),
    );
  }
}
