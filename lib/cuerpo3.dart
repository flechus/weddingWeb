import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
      '¡Hola a todos! Si estas leyendo esto, es que queremos que compartas con nosotros el día más importante de nuestra vida. Después de haber estado compartiendo nuestras vidas durante siete años llenos de amor y aventuras nos hemos decidido a dar el paso más importante. Nos conocimos hace tiempo en una noche especial y desde entonces, hemos explorado juntos el mundo, creando recuerdos increíbles en lugares como Islandia, Laponia, Italia, Escocia y París ¡Y queremos que vosotros seais una parte importante de esta aventura!';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 1000,
                    height: 1000,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
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
    );
  }
}
