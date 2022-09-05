import 'package:app_maromba/Screens/AvFisica.dart';
import 'package:app_maromba/Screens/Dieta.dart';
import 'package:app_maromba/Screens/LoginForm.dart';
import 'package:app_maromba/Screens/Perfil.dart';
import 'package:app_maromba/Screens/Treinos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 64,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgLZal2ngrRXdEebFSXKENv_Joj38zpGXhwA&usqp=CAU')),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Seja bem vindo Pedro'),
                              FlatButton(
                                  textColor: Colors.purple,
                                  child: Text('Acessar Perfil!'),
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.all(35),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));
                      ;
                    },
                    splashColor: Colors.purple,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.purple,
                          ),
                          Text(
                            "Perfil",
                            style: new TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Treinos()));
                      ;
                    },
                    splashColor: Colors.purple,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.center_focus_strong,
                            size: 70,
                            color: Colors.purple,
                          ),
                          Text(
                            "Treinos",
                            style: new TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dieta()));
                      ;
                    },
                    splashColor: Colors.purple,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.no_food,
                            size: 70,
                            color: Colors.purple,
                          ),
                          Text(
                            "Dieta",
                            style: new TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AvFisica()));
                      ;
                    },
                    splashColor: Colors.purple,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.graphic_eq,
                            size: 70,
                            color: Colors.purple,
                          ),
                          Text(
                            "Avaliação fisica",
                            style: new TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}