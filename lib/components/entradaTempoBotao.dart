import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempoBotao extends StatelessWidget {
  const EntradaTempoBotao({
    Key? key,
    required this.icone,
    required this.cor,
    required this.func,
  }) : super(key: key);

  final IconData icone;
  final Color cor;
  final void Function()? func;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
      ),
      onPressed: func,
      child: Icon(icone, color: cor),
    );
  }
}
