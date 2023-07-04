import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'cuerpo.dart';
import 'normativa.dart'; // Importa la página de la normativa

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showWelcome = true;

  @override
  void initState() {
    super.initState();
    // Mostrar la página principal después de 3 segundos
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showWelcome = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: _showWelcome ? const PaginaInicio() : const PaginaPrincipal(),
      ),
    );
  }
}

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              'Bienvenido al viaje más importante de nuestra vida.\n',
              maxLines: 1,
              minFontSize: 17,
              style: TextStyle(
                fontFamily: 'Playfair',
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale: 0.3,
              child: Image.asset('images/plane.png'),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                // Navegar a la página de la normativa al hacer clic en el enlace
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NormativaPage(),
                  ),
                );
              },
              child: const Text(
                'Normativa de Cookies y Propiedad Intelectual',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Encabezado
        const Expanded(
          flex: 1,
          child: Encabezado(),
        ),
        // Cuerpo
        Expanded(
          flex: 3,
          child: ListView(
            children: const [
              CuentaAtras(),
              Cuerpo3(),
              Cuerpo1(),
              Cuerpo2(),
              Cuerpo4(),
              Cuerpo5(),
            ],
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            // Navegar a la página de la normativa al hacer clic en el enlace
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NormativaPage(),
              ),
            );
          },
          child: const Text(
            'Normativa de Cookies y Propiedad Intelectual',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}

class Encabezado extends StatelessWidget {
  const Encabezado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/head2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.white.withOpacity(0.25),
          child: const Center(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Oihane & Javi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SweetRomance',
                      fontSize: 80,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    minFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AutoSizeText(
                    '07/Sep/2024',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Playfair',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    minFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          '07/07/2024',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SweetRomance',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
