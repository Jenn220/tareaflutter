import 'package:flutter/material.dart';
import 'package:login/description.dart';
import 'package:login/options.dart';
import 'app.dart';
import 'form_screen.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const Login(),
        '/form': (context) => const FormScreen(),
        '/description': (context) => const DescriptionScreen(),
        '/options': (context) => const OptionsScreen(),
      },
    );
  }
}
