import 'package:flutter/material.dart';

class Redirect {
  static to(BuildContext context, String route, {Map<String, String>? params}) {
    Navigator.of(context).pushNamed(route, arguments: params);
  }
}
