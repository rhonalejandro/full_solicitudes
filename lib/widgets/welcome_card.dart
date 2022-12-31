import 'package:flutter/material.dart';

import '../config/style_config.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(10, 15, 20, 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: StyleConfig.appColor,
      ),
      child: const Text('Usuario: Rhonald Alejandro',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          )),
    );
  }
}
