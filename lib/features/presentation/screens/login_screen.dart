import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Ingresar',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
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
                        SizedBox(height: size.height * 0.08),
                        FilledButton.tonal(
                          onPressed: () {},
                          child: const Text('Ingresar'),
                        ),
                        SizedBox(height: size.height * 0.08),
                        RichText(
                          text: TextSpan(
                            text: 'Si no tienes cuenta ',
                            style: const TextStyle(color: Colors.black87),
                            children: [
                              TextSpan(
                                text: 'registrate',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('hola');
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
