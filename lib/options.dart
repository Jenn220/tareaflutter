import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 251, 231, 231),
      appBar: AppBar(
        title: const Text('Opciones'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Stack(
        children: [
       Padding(
          padding: const EdgeInsets.all(24.0),
           child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hola, bienvenido de nuevo!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                const SizedBox(height: 20),
                  Container(
                  width: 250,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Opciones disponibles:',
                          style: TextStyle(
                          fontSize: 18,
                            fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                          ),
                       ),
                        const SizedBox(height: 20),
                         _buildOptionButton('Ver archivos'),
                        const SizedBox(height: 15),
                         _buildOptionButton('Ajustes rápidos'),
                        const SizedBox(height: 15),
                         _buildOptionButton('Perfil usuario'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 180,
            height: 180,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
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

  Widget _buildOptionButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 6,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
