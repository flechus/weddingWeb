import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double sizeMainTitle = 60;
const double sizeSecondTitle = sizeMainTitle * 0.4;

class Cuerpo3Titulo extends StatelessWidget {
  const Cuerpo3Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sizeSecondTitle = 28.0;
    const double sizeMainTitle = 48.0;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 8),
      alignment: Alignment.bottomLeft,
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Primera parada:',
              style: TextStyle(
                fontSize: sizeSecondTitle,
                color: Colors.black,
                fontFamily: 'Playfair',
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            AutoSizeText(
              'Nosotros',
              style: TextStyle(
                fontSize: sizeMainTitle,
                color: Colors.black,
                fontFamily: 'Playfair',
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class Cuerpo3Informacion extends StatelessWidget {
  const Cuerpo3Informacion({Key? key}) : super(key: key);

  final String textoLargo =
      '¡Hola a todos! Si estas leyendo esto, es que queremos que compartas con nosotros el día mas importante de nuestra vida. Después de 7 años, 10 meses y 6 dias, nos hemos decidido a dar el si quiero.Desde aquella noche de Halloween, no hemos parado de explorar el mundo juntos, creando recuerdos inolvidables en lugares como Islandia, Italia, Escocia, Oporto y Paris ¡Y queremos que vosotros forméis una parte de esta nueva aventura!';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Fondo blanco
      child: Stack(
        // Utilizamos un Stack para superponer el SVG y el contenido
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors
                      .transparent, // Hacemos el fondo transparente para dejar ver el SVG
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 1000,
                        height: 1000,
                        decoration: const BoxDecoration(
                          color: Colors
                              .transparent, // Hacemos el fondo transparente
                        ),
                        child: Image.asset(
                          'images/aboutUs2.jpg', // Ruta de tu imagen
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  alignment: Alignment.centerRight,
                  child: AutoSizeText(
                    textoLargo,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontFamily: 'Playfair',
                    ),
                    maxLines: 15,
                    minFontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
