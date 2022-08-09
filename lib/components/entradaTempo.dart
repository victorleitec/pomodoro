import 'package:flutter/material.dart';
import 'package:pomodoro/components/entradaTempoBotao.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  }) : super(key: key);

  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntradaTempoBotao(
              icone: Icons.arrow_downward,
              cor: Colors.white,
              func: dec,
            ),
            Text(
              '$valor min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            EntradaTempoBotao(
              icone: Icons.arrow_upward,
              cor: Colors.white,
              func: inc,
            ),
          ],
        )
      ],
    );
  }
}
