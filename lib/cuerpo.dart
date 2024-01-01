//import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'cuerpo1.dart';
import 'cuerpo2.dart';
import 'cuerpo3.dart';
import 'cuerpo4.dart';
import 'cuerpo5.dart';
import 'cuerpo6.dart';

const int titleFlex = 1;
const int informatioFlex = titleFlex * 5;
/*
class CuentaAtras extends StatelessWidget {
  const CuentaAtras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remainingDays = _calculateRemainingDays();
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: _flipClock(remainingDays, colorScheme),
        ),
      ),
    );
  }

  Widget _flipClock(final remainingDays, ColorScheme colors) {
    return Container(
      decoration: BoxDecoration(
        color: colors.onPrimary,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: FlipClockPlus.reverseCountdown(
        duration: Duration(days: remainingDays),
        digitColor: Colors.white,
        backgroundColor: Colors.black,
        digitSize: 30.0,
        centerGapSpace: 0.0,
        borderRadius: const BorderRadius.all(Radius.circular(3.0)),
        onDone: () {},
      ),
    );
  }

  int _calculateRemainingDays() {
    final now = DateTime.now();
    final targetDate = DateTime(2024, 7, 7);
    final difference = targetDate.difference(now);
    return difference.inDays;
  }
}
*/

class CuentaAtras extends StatefulWidget {
  const CuentaAtras({Key? key}) : super(key: key);

  @override
  _CuentaAtrasState createState() => _CuentaAtrasState();
}

class _CuentaAtrasState extends State<CuentaAtras> {
  late DateTime _targetDate;
  late Duration _remainingDuration;
  late String _countdownText;

  @override
  void initState() {
    super.initState();
    _targetDate = DateTime(2024, 9, 7, 13, 0); // Fecha y hora objetivo
    _startCountdown();
  }

  void _startCountdown() {
    final now = DateTime.now();
    _remainingDuration = _targetDate.difference(now);

    if (_remainingDuration.isNegative) {
      _countdownText = '0:0:0:0';
    } else {
      final days = _remainingDuration.inDays.toString().padLeft(3, '0');
      final hours =
          (_remainingDuration.inHours % 24).toString().padLeft(2, '0');
      final minutes =
          (_remainingDuration.inMinutes % 60).toString().padLeft(2, '0');
      final seconds =
          (_remainingDuration.inSeconds % 60).toString().padLeft(2, '0');
      _countdownText = '$days:$hours:$minutes:$seconds';

      Future.delayed(const Duration(seconds: 1),
          _startCountdown); // Actualizar cada segundo
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: AutoSizeText(
            _countdownText,
            style: const TextStyle(
              fontSize: 50.0,
              color: Colors.black,
              fontFamily: 'Xanh',
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            minFontSize: 10.0,
          ),
        ),
      ),
    );
  }
}

class Cuerpo1 extends StatelessWidget {
  const Cuerpo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo1Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo1Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Cuerpo2 extends StatelessWidget {
  const Cuerpo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo2Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo2Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Cuerpo3 extends StatelessWidget {
  const Cuerpo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo3Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo3Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Cuerpo4 extends StatelessWidget {
  const Cuerpo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo4Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo4Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Cuerpo5 extends StatelessWidget {
  const Cuerpo5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo5Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo5Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Cuerpo6 extends StatelessWidget {
  const Cuerpo6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16),
      child: const Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            flex: titleFlex,
            child: Center(child: Cuerpo6Titulo()),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: informatioFlex,
            child: Center(child: Cuerpo6Informacion()),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
