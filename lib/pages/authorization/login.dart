import 'package:flutter/material.dart';

import '../../helpers/my_helpers.dart';
import '../../helpers/redirect_helpers.dart';
import '../../services/authorization/login_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  String user = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.fill,
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Image.asset(
                  "assets/images/full_logo.png",
                  width: 200,
                ),
              ),
              Container(
                height: 240,
                color: Colors.green.withOpacity(0),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "INICIO DE SESION",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 3),
                        textAlign: TextAlign.center,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: const Text("Correo Electronico"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        validator: (email) {
                          if (!isEmail(email ?? "")) {
                            return "Email Requerido";
                          }
                          user = email!;
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: const Text("Contraseña"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        validator: (pass) {
                          if ((pass ?? "").isEmpty) {
                            return "Contraseña requerida";
                          }
                          password = pass!;
                          return null;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              if (LoginServices.getLogin()) {
                                Redirect.to(context, "/Home",
                                    params: {'nombre': 'rhonald'});
                              }
                            }
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:
                                Color.fromARGB(255, 187, 6, 6).withOpacity(0.8),
                          ),
                          child: const Text(
                            "Iniciar Sesion",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
