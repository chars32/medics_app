import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Correo'),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Contraseña'),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Repetir Contraseña'),
                        ),
                        SizedBox(height: size.height * 0.08),
                        FilledButton.tonal(
                          onPressed: () {},
                          child: const Text('Registrar'),
                        ),
                        SizedBox(height: size.height * 0.08),
                        RichText(
                          text: TextSpan(
                            text: 'Tienes cuenta ',
                            style: const TextStyle(color: Colors.black87),
                            children: [
                              TextSpan(
                                text: 'ingresa',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pop();
                                  },
                                style: TextStyle(color: Colors.pink[600]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
