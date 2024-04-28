import 'package:flutter/material.dart';
import 'package:xylophone_flutter/xylophone_page.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophonePage(),
    );
  }
}
