import 'package:app_maromba/Screens/LoginForm.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Text('Informe os dados', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                    fontSize: 25.0),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Nome Completo',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Cpf',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Altura',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Peso',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Idade',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Senha',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: FlatButton(
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){ },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(30.0)

                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Já tem uma conta?'),
                      FlatButton(
                        textColor: Colors.purple,
                        child: Text('Fazer login!'),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginForm()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
