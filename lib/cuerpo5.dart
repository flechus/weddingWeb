import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double sizeMainTitle = 60;
const double sizeSecondTitle = sizeMainTitle * 0.4;

class Cuerpo5Titulo extends StatelessWidget {
  const Cuerpo5Titulo({Key? key}) : super(key: key);

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
              'Última parada:',
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
              'Información',
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

class Cuerpo5Informacion extends StatelessWidget {
  const Cuerpo5Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: const Row(
        children: [
          Expanded(
            flex: 4,
            child: CorreoElectronico(),
          ),
        ],
      ),
    );
  }
}

class CorreoElectronico extends StatelessWidget {
  const CorreoElectronico({Key? key}) : super(key: key);

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
              'svg/informacion/mail.svg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              'bodaoihaneyjavi@gmail.com',
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
              'No dudes en contactar para más información.',
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
