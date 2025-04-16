import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String? selectedGender;
  String? selectedCivilStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 231, 231),
        appBar: AppBar(
          title: const Text('Datos Personales'),
          backgroundColor: Colors.deepOrange,
      ),
      body: Center(
         child: Container(
          padding: const EdgeInsets.all(25),
            width: 360,
        decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.circular(25),
          boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: SingleChildScrollView(
             child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Apellido'),
                ),
                const SizedBox(height: 20),

                /// genero 
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Género:', style: TextStyle(fontSize: 16)),
                ),
               DropdownButtonFormField<String>(
                  value: selectedGender,
                isExpanded: true,
                hint: const Text('Selecciona tu género'),
                items: ['Femenino', 'Masculino', 'Otro'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                /// estado
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Estado Civil:', style: TextStyle(fontSize: 16)),
                ),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: selectedCivilStatus,
                  hint: const Text('Selecciona tu estado civil'),
                  items: ['Soltero/a', 'Casado/a', 'Divorciado/a'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCivilStatus = value;
                    });
                  },
                ),

                const SizedBox(height: 30),
            /// botones
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  Guardar
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 253, 174, 85),
                      ),
                      child: const Text('Guardar'),
                    ),

               //  Cancelar
                 ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: const Text('Cancelar'),
                    ),

                    //  Salir
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      child: const Text('Salir'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
