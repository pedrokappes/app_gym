import 'package:flutter/material.dart';

class Dieta extends StatefulWidget {
  const Dieta({Key? key}) : super(key: key);

  @override
  State<Dieta> createState() => _DietaState();
}

class _DietaState extends State<Dieta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dieta'),
      ),
    );
  }
}