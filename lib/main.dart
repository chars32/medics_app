import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medics_app/api/firebase_api.dart';
import 'package:medics_app/config/router/app_router.dart';
import 'package:medics_app/config/theme/app_theme.dart';
import 'package:medics_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}
