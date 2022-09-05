import 'package:flutter/material.dart';

class AvFisica extends StatefulWidget {
  const AvFisica({Key? key}) : super(key: key);

  @override
  State<AvFisica> createState() => _AvFisicaState();
}

class _AvFisicaState extends State<AvFisica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvFisica'),
      ),
    );
  }
}
