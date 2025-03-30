import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterMessage extends StatefulWidget {
  const FooterMessage({super.key});

  @override
  State<FooterMessage> createState() => _FooterMessageState();
}

class _FooterMessageState extends State<FooterMessage> {
  int counter = 0;

  List<String> devMessages = [
    '// -- Iniciando auto destruição da página -- //',
    'There are no easter eggs up here. Go away.',
    'Eu já disse, não precisa mais clicar.',
    'Você é insistente, gosto disso.',
    'Posso fazer isso o dia todo.',
    'Never gonna give you up',
    'Você ainda tá aqui?',
    'Você é teimoso.',
    '🐱',
    ':3',
  ];

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void devMsgCounter(BuildContext context) {
    if (counter >= 12) {
      showSnackBar(context, devMessages[Random().nextInt(devMessages.length)]);
    } else if (counter > 7) {
      showSnackBar(context, 'Não é necessário. Você já é um desenvolvedor.');
    } else if (counter == 7) {
      showSnackBar(context, 'Você agora é um desenvolvedor!');
    } else if (counter >= 3) {
      showSnackBar(
        context,
        'Faltam ${7 - counter} etapas para você se tornar um desenvovedor',
      );
    }
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => devMsgCounter(context),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Feito com 🪄 e Flutter.',
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Theme.of(context).colorScheme.surfaceDim,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
