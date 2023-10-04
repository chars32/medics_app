import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Login',
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
                    vertical: 25,
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
                        SizedBox(height: size.height * 0.05),
                        FilledButton.tonal(
                          onPressed: () {},
                          child: const Text('Ingresar'),
                        ),
                        SizedBox(height: size.height * 0.05),
                        const Text('Registrar cuenta')
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
