import 'package:flutter/material.dart';
import 'package:full_solicitudes/config/app_config.dart';

import '../config/style_config.dart';
import '../widgets/button_style1.dart';
import '../widgets/welcome_card.dart';
import 'navigation/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      backgroundColor: StyleConfig.appColor,
      appBar: AppBar(
        title: Text(AppConfig.titleApp),
        backgroundColor: StyleConfig.appBarColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const WelcomeCard(),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: StyleConfig.backGroundWrap,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonStyle1(),
                        ButtonStyle1(),
                        ButtonStyle1(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonStyle1(),
                        ButtonStyle1(),
                        ButtonStyle1(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
