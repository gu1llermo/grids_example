import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid Example'),
        ),
        body: const Column(
          children: [
            Flexible(
              flex: 1,
              child: Componente(),
            ),
            Flexible(
              flex: 6,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Componente(),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Componente(),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Componente(),
                              ),
                              Flexible(
                                flex: 2,
                                child: Componente(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Componente(),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Componente(),
            ),
          ],
        ),
      ),
    );
  }
}

class Componente extends StatelessWidget {
  const Componente(
      {super.key, this.verticalGap = 5, this.horizontalGap = 5, this.color});
  final double verticalGap;
  final double horizontalGap;
  final Color? color;

  Color getRandomColor() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);
    return Color.fromARGB(255, r, g, b);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalGap, vertical: verticalGap),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ColoredBox(
          color: color ?? getRandomColor(),
          child: const Placeholder(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
