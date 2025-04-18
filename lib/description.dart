import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 251, 231, 231),
      appBar: AppBar(
        title: const Text('Descripción del Proyecto'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                const SizedBox(height: 20), 
                 Container(
                 padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                 color: Colors.deepOrange[300],
                   borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                    color: Colors.deepOrange.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Este proyecto es una tarea realizada por diferentes partes por pantallas, rutas, etc. Podemos encontrar información personal básica del usuario para registrarse, aunque este no tenga validaciones reales aún, y permite navegar entre diferentes secciones para practicar en Flutter.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/options');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                  ),
                  child: const Text(
                    'Ir a Opciones',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
              bottom: 20,
            child: Container(
               width: 300, 
               height: 300,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                 boxShadow: [
                 BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  'lib/images/dragon_leyendo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
