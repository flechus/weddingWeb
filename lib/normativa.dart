import 'package:flutter/material.dart';

class NormativaPage extends StatelessWidget {
  const NormativaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Normativa de Cookies y Propiedad Intelectual'),
      ),
      body: const Center(
        child: Text(
          'Contenido de la normativa aquí',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
