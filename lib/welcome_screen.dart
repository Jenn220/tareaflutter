import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Bola
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.tag_faces, 
                color: Colors.deepOrange,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            /// Texto de bienvenida
            const Text(
              '¡Hola! Bienvenido',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 40),

            /// Botón de ingreso
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepOrange,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
