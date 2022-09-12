import 'package:flutter/material.dart';

class Treinos extends StatefulWidget {
  const Treinos({Key? key}) : super(key: key);

  @override
  State<Treinos> createState() => _TreinosState();
}

class _TreinosState extends State<Treinos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treinos'),
      ),
    );
  }
}