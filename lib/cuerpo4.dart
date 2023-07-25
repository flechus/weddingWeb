import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double sizeMainTitle = 60;
const double sizeSecondTitle = sizeMainTitle * 0.4;

class Cuerpo4Titulo extends StatelessWidget {
  const Cuerpo4Titulo({Key? key}) : super(key: key);

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
              'Cuarta parada:',
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
              'Código Vestimenta',
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

class Cuerpo4Informacion extends StatelessWidget {
  const Cuerpo4Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'svg/wordPart/europeNorth.svg', // Ruta de tu archivo SVG
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        const Row(
          children: [
            Expanded(
              flex: 4,
              child: DressCodeHombre(),
            ),
            Expanded(
              flex: 4,
              child: DressCodeMujer(),
            ),
          ],
        ),
      ],
    );
  }
}

class DressCodeHombre extends StatelessWidget {
  const DressCodeHombre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors
          .transparent, // Hacemos el fondo transparente para dejar ver el SVG,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            SvgPicture.asset(
              'svg/dresCode/man.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Traje oscuro',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              '',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
              ),
              maxLines: 2,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DressCodeMujer extends StatelessWidget {
  const DressCodeMujer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors
          .transparent, // Hacemos el fondo transparente para dejar ver el SVG,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            SvgPicture.asset(
              'svg/dresCode/woman.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Vestido corto / Midi\nTraje',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              '',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
              ),
              maxLines: 2,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Vuelta extends StatelessWidget {
  const Vuelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            SvgPicture.asset(
              'svg/transporte/busOut.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Final de la noche',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Hora 23:00\nLugar Bideko.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Playfair',
              ),
              maxLines: 2,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
