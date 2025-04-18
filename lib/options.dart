import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 231, 231),
      appBar: AppBar(
        title: const Text('Opciones'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'Menú de Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildDrawerItem(Icons.folder, 'Ver archivos', context),
            _buildDrawerItem(Icons.settings, 'Ajustes rápidos', context),
            _buildDrawerItem(Icons.person, 'Perfil usuario', context),
            _buildDrawerItem(Icons.info, 'Sobre el proyecto', context),
            _buildDrawerItem(Icons.logout, 'Cerrar sesión', context, '/login'),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hola y bienvenido!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Menú a la izquierda para ver las opciones.',
                    style: TextStyle(fontSize: 16),
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

  Widget _buildDrawerItem(IconData icon, String text, BuildContext context, [String? route]) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange),
      title: Text(text),
      onTap: () {
        Navigator.pop(context);
        if (route != null) {
          Navigator.pushReplacementNamed(context, route);
        }

      },
    );
  }
}
