import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';

const double sizeMainTitle = 30;
const double sizeSecondTitle = sizeMainTitle * 0.4;

class Cuerpo1Titulo extends StatelessWidget {
  const Cuerpo1Titulo({Key? key}) : super(key: key);

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
              'Tercera parada:',
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
              'Lo esencial',
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

class Cuerpo1Informacion extends StatelessWidget {
  const Cuerpo1Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'svg/wordPart/iceland.svg', // Ruta de tu SVG
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        const Row(
          children: [
            Expanded(
              flex: 4,
              child: Fecha(),
            ),
            Expanded(
              flex: 4,
              child: Lugar(),
            ),
            Expanded(
              flex: 4,
              child: Fiesta(),
            ),
          ],
        ),
      ],
    );
  }
}

class Fecha extends StatelessWidget {
  const Fecha({Key? key}) : super(key: key);

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
              'svg/timeLine/calendarLove.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              '7/Septiembre/2024',
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
              'Sábado\n A las 13:00 horas',
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

class Lugar extends StatelessWidget {
  const Lugar({Key? key}) : super(key: key);

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
              'svg/timeLine/place.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Restaurante Bideko',
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
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Playfair',
                ),
                children: [
                  const TextSpan(
                    text: 'Bº Bideko nº74, 01450 Lezama, Álava\n',
                  ),
                  TextSpan(
                    text: 'restaurantebideko.com',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Acción cuando se hace clic en el hipervínculo
                        ('https://restaurantebideko.com/');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Fiesta extends StatelessWidget {
  const Fiesta({Key? key}) : super(key: key);

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
              'svg/timeLine/party.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'Txoko Eguzkilore',
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
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Playfair',
                ),
                children: [
                  const TextSpan(
                    text: 'C/ Sagarminaga 6 planta baja, Bilbao, Bizkaia\n',
                  ),
                  TextSpan(
                    text: 'txokoeguzkilore.com',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Acción cuando se hace clic en el hipervínculo
                        ('https://txokoeguzkilore.com/');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
