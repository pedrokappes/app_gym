import 'package:app_maromba/Avaliacoes/avaliacoes.dart';
import 'package:flutter/material.dart';

class avaliacaoAdd extends StatefulWidget {

  final Function(Avaliacoes) addAvaliacao;

  avaliacaoAdd(this.addAvaliacao);

  @override
  State<avaliacaoAdd> createState() => _avaliacaoAddState();
}

class _avaliacaoAddState extends State<avaliacaoAdd> {

  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purpleAccent,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var dataController = TextEditingController();
    var pesoController = TextEditingController();


    return Container(
      padding: EdgeInsets.all(8),
      height: 300,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Adicionar Avaliação',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.purpleAccent),
            ),

            buildTextField('Data', dataController),
            buildTextField('Peso', pesoController),


            ElevatedButton(onPressed: () {

              final avaliacao = Avaliacoes(dataController.text, pesoController.text);

              widget.addAvaliacao(avaliacao);
              Navigator.of(context).pop();

            }, child: Text('Adicionar Avaliação'))
          ],
        ),
      ),
    );
  }
}
