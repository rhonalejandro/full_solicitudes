import 'package:flutter/material.dart';

class ButtonStyle1 extends StatelessWidget {
  const ButtonStyle1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            fixedSize: const Size(90, 90),
            textStyle: const TextStyle(
              fontSize: 14,
            ),
            elevation: 8,
            shadowColor: Colors.blue.shade700,
            shape: const CircleBorder()),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.ac_unit_outlined),
            ),
            Text(
              'Solicitudes pendientes',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
