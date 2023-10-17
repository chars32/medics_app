import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medics_app/features/auth/presentation/providers/providers.dart';
import 'package:medics_app/features/shared/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _LoginForm(),
    );
  }
}

class _LoginForm extends ConsumerWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);

    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          // const SizedBox( height: 50 ),
          const Spacer(flex: 1),
          Text('Login', style: textStyles.titleLarge),
          // const SizedBox(height: 90),
          const Spacer(),

          CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
            onChanged: ref.read(loginFormProvider.notifier).onEmailChange,
            errorMessage:
                loginForm.isFormPosted ? loginForm.email.errorMessage : null,
          ),
          // const SizedBox(height: 30),
          const Spacer(),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: ref.read(loginFormProvider.notifier).onPasswordChange,
            errorMessage:
                loginForm.isFormPosted ? loginForm.password.errorMessage : null,
          ),

          // const SizedBox(height: 30),
          const Spacer(),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomFilledButton(
                text: 'Ingresar',
                buttonColor: Colors.black,
                onPressed: () {
                  ref.read(loginFormProvider.notifier).onFormSubmit();
                },
              )),

          const Spacer(flex: 2),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Text('¿No tienes cuenta?'),
          //     TextButton(
          //         onPressed: () => context.push('/register'),
          //         child: const Text('Crea una aquí'))
          //   ],
          // ),

          // const Spacer(flex: 1),
        ],
      ),
    );
  }
}
